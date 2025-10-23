// apihelper_baseurl.js
// Robust, defensive single-file recon script.
// Usage (PowerShell): frida -U -f com.dozingcatsoftware.bouncy -l .\apihelper_baseurl.js --no-pause

// Helper: safe Module.findExportByName wrapper
function safeFindExport(modName, symbol) {
  try {
    if (!modName || !symbol) return null;
    // Module.findExportByName sometimes throws on odd inputs; guard it
    if (typeof Module.findExportByName !== 'function') return null;
    return Module.findExportByName(modName, symbol);
  } catch (e) {
    return null;
  }
}

// Find RegisterNatives by trying common module names then scanning all modules.
function findRegisterNatives() {
  const candidates = ['libart.so', 'libartd.so', 'libart', 'libartd'];
  for (let i = 0; i < candidates.length; i++) {
    const addr = safeFindExport(candidates[i], 'RegisterNatives');
    if (addr) {
      console.log('[*] RegisterNatives found in', candidates[i], '->', addr);
      return addr;
    }
  }
  const mods = Process.enumerateModulesSync();
  for (let i = 0; i < mods.length; i++) {
    const m = mods[i];
    const addr = safeFindExport(m.name, 'RegisterNatives');
    if (addr) {
      console.log('[*] RegisterNatives found in', m.name, '->', addr);
      return addr;
    }
  }
  return null;
}

// Attach a tiny interceptor that prints the 3rd JNI arg (common jstring) if possible.
function attachLiteIfPossible(fnPtr, label) {
  try {
    if (!fnPtr) return false;
    const key = fnPtr.toString();
    if (attached[key]) return true;
    Interceptor.attach(fnPtr, {
      onEnter(args) {
        try {
          console.log(`\n[hit native] ${label} @ ${fnPtr}`);
          if (args.length > 2 && !args[2].isNull()) {
            try {
              const env = Java.vm.getEnv();
              // env.getStringUtfChars may exist; try safely
              if (env && typeof env.getStringUtfChars === 'function') {
                try {
                  const s = env.getStringUtfChars(args[2]);
                  console.log('  arg[2] as jstring:', s);
                } catch (e) {
                  // fallback: raw hexdump
                  try { console.log('  arg[2] hexdump:\\n' + hexdump(args[2], { offset:0, length:64, header:true, ansi:false })); } catch(e){}
                }
              } else {
                try { console.log('  arg[2] hexdump:\\n' + hexdump(args[2], { offset:0, length:64, header:true, ansi:false })); } catch(e){}
              }
            } catch (e) { /* ignore */ }
          }
        } catch (e) { /* ignore */ }
      },
      onLeave(retval) { try { console.log('  retval:', retval); } catch(e){} }
    });
    attached[key] = true;
    console.log('[+] attached lite to', label, '@', fnPtr);
    return true;
  } catch (e) {
    console.log('[!] attachLiteIfPossible error for', label, ':', e);
    return false;
  }
}

var attached = {};

// Main routine: hook loadLibrary, map RegisterNatives, scan for COMP5618{, call Java wrapper.
setTimeout(function () {
  console.log('[*] apihelper_baseurl.js (robust) starting');

  // Hook System.loadLibrary (best-effort)
  try {
    Java.perform(function () {
      try {
        const System = Java.use('java.lang.System');
        System.loadLibrary.overload('java.lang.String').implementation = function (lib) {
          try { console.log('[loadLibrary] ' + lib); } catch(e){}
          return this.loadLibrary(lib);
        };
        console.log('[*] hooked java.lang.System.loadLibrary');
      } catch (e) {
        console.log('[!] unable to hook System.loadLibrary:', e);
      }
    });
  } catch (e) {
    console.log('[!] Java.perform failed for loadLibrary hook:', e);
  }

  // Find RegisterNatives
  let reg = null;
  try {
    reg = findRegisterNatives();
  } catch (e) {
    reg = null;
  }

  if (!reg) {
    console.log('[!] RegisterNatives not found automatically. Will continue to scan modules for prefix.');
  } else {
    // Attach to RegisterNatives defensively
    try {
      Interceptor.attach(reg, {
        onEnter: function (args) {
          try {
            const psize = Process.pointerSize;
            const n = args[3].toInt32();
            let cls = '<unknown>';
            try { cls = Java.vm.getEnv().getClassName(args[1]); } catch (e) {}
            console.log(`\n[RegisterNatives] class=${cls} methods=${n}`);
            const table = args[2];
            for (let i = 0; i < n; i++) {
              try {
                const row = table.add(i * psize * 3);
                const namePtr = Memory.readPointer(row);
                const sigPtr  = Memory.readPointer(row.add(psize));
                const fnPtr   = Memory.readPointer(row.add(psize * 2));
                const name = namePtr.isNull() ? '<null>' : Memory.readCString(namePtr);
                const sig  = sigPtr.isNull()  ? '<null>' : Memory.readCString(sigPtr);
                const mod  = Process.findModuleByAddress(fnPtr);
                const where = mod ? (mod.name + ' +0x' + fnPtr.sub(mod.base).toString(16)) : fnPtr.toString();
                console.log(`  ${name}${sig} -> ${where} (${fnPtr})`);
                if (/(baseUrlFromJNI|flag|check|verify)/i.test(name)) {
                  attachLiteIfPossible(fnPtr, cls + '->' + name + sig);
                }
              } catch (e) {
                console.log('  [!] failed parse row i=' + i + ':', e);
              }
            }
          } catch (e) {
            console.log('[!] RegisterNatives onEnter error:', e);
          }
        }
      });
      console.log('[*] attached to RegisterNatives @', reg);
    } catch (e) {
      console.log('[!] attach to RegisterNatives failed:', e);
    }
  }

  // Scan all .so modules for the prefix and dump nearby bytes
  try {
    const LOOK = 'COMP5618{';
    Process.enumerateModulesSync().forEach(function (mod) {
      try {
        if (!/\.so$/i.test(mod.name)) return;
        Memory.scan(mod.base, mod.size, LOOK, {
          onMatch: function (addr) {
            try {
              console.log(`\n[FOUND] "${LOOK}" in ${mod.name} @ ${addr}`);
              try { console.log('  CString:', Memory.readCString(addr)); } catch (e) {}
              try {
                console.log('  hexdump (next 256 bytes):');
                console.log(hexdump(addr, { offset: 0, length: 256, header: true, ansi: false }));
              } catch (e) { console.log('  hexdump failed:', e); }
            } catch (e) { console.log('[!] onMatch inner error:', e); }
          },
          onComplete: function () {}
        });
      } catch (e) { /* ignore module scan errors */ }
    });
  } catch (e) {
    console.log('[!] module scan error:', e);
  }

  // Try hooking & calling Java wrapper ApiHelperJava.baseUrlFromJNI if available
  try {
    Java.perform(function () {
      try {
        const CLASS = 'com.dozingcatsoftware.ApiHelperJava';
        const C = Java.use(CLASS);
        try {
          if (C && C.baseUrlFromJNI) {
            // Hook implementation to log returned value
            try {
              C.baseUrlFromJNI.implementation = function () {
                const r = this.baseUrlFromJNI();
                try { console.log('[java] ' + CLASS + '.baseUrlFromJNI() ->', r); } catch(e){}
                return r;
              };
              console.log('[*] hooked ' + CLASS + '.baseUrlFromJNI');
            } catch (e) {
              console.log('[!] failed to hook Java method:', e);
            }
            // Try to call it (best-effort)
            try {
              const v = C.baseUrlFromJNI();
              try { console.log('[call] ' + CLASS + '.baseUrlFromJNI() returned ->', v); } catch(e){}
            } catch (e) {
              console.log('[call] calling baseUrlFromJNI failed (may require app init):', e);
            }
          } else {
            console.log('[!] Java class or method not found:', CLASS);
          }
        } catch (e) { console.log('[!] Java.use or baseUrlFromJNI access error:', e); }
      } catch (e) { console.log('[!] Java.perform inner error:', e); }
    });
  } catch (e) {
    console.log('[!] Java.perform error for ApiHelperJava:', e);
  }

  console.log('[*] apihelper_baseurl.js initial pass complete. Interceptors remain active.');
}, 400);
