// wait_and_scan.js
// Waits for libnative-lib.so, scans for COMP5618{, waits for ApiHelperJava class and baseUrlFromJNI, and retries RegisterNatives.
// Run: frida -U -f com.dozingcatsoftware.bouncy -l wait_and_scan.js --no-pause

const TARGET_LIB = "libnative-lib.so";
const TARGET_CLASS = "com.dozingcatsoftware.ApiHelperJava";
const PREFIX = "COMP5618{";

console.log("[*] wait_and_scan.js starting — will poll for module/class/registers");

// helper: safe find export
function safeFindExport(modName, sym) {
  try { return Module.findExportByName(modName, sym); } catch(e) { return null; }
}

let polledModule = false;
let polledClass = false;
let polledRegister = false;
let moduleScanDone = false;
let registerAttached = false;

const interval = setInterval(function() {
  try {
    // 1) module check
    if (!polledModule) {
      const mod = Process.findModuleByName(TARGET_LIB);
      if (mod) {
        polledModule = true;
        console.log("[*] Found module:", mod.name, " base:", mod.base, " size:", mod.size);
        // scan for prefix inside this module
        try {
          Memory.scan(mod.base, mod.size, PREFIX, {
            onMatch: function(addr) {
              console.log(`\n[FOUND] "${PREFIX}" in ${mod.name} @ ${addr}`);
              try { console.log('  CString:', Memory.readCString(addr)); } catch(e){}
              try {
                console.log('  hexdump (next 512 bytes):');
                console.log(hexdump(addr, { offset:0, length:512, header:true, ansi:false }));
              } catch(e) { console.log('  hexdump failed:', e); }
            },
            onComplete: function() { moduleScanDone = true; console.log("[*] module scan complete"); }
          });
        } catch(e){
          console.log("[!] Memory.scan failed:", e);
        }
      }
    }

    // 2) try to find RegisterNatives (try common art libs first, then all modules)
    if (!registerAttached) {
      const common = ['libart.so','libartd.so','libart','libartd'];
      let reg = null;
      for (let i=0;i<common.length && !reg;i++) {
        reg = safeFindExport(common[i], 'RegisterNatives');
        if (reg) { console.log("[*] RegisterNatives found in", common[i], "->", reg); break; }
      }
      if (!reg) {
        // scan all modules if none found yet
        const mods = Process.enumerateModulesSync();
        for (let i=0;i<mods.length && !reg;i++) {
          try {
            reg = safeFindExport(mods[i].name, 'RegisterNatives');
            if (reg) { console.log("[*] RegisterNatives found in", mods[i].name, "->", reg); break; }
          } catch(e){}
        }
      }
      if (reg) {
        try {
          Interceptor.attach(reg, {
            onEnter: function(args) {
              try {
                const psize = Process.pointerSize;
                const n = args[3].toInt32();
                let cls = '<unknown>';
                try { cls = Java.vm.getEnv().getClassName(args[1]); } catch(e){}
                console.log(`\n[RegisterNatives] class=${cls} methods=${n}`);
                const table = args[2];
                for (let i=0;i<n;i++) {
                  try {
                    const row = table.add(i * psize * 3);
                    const namePtr = Memory.readPointer(row);
                    const sigPtr  = Memory.readPointer(row.add(psize));
                    const fnPtr   = Memory.readPointer(row.add(psize * 2));
                    const name = namePtr.isNull() ? '<null>' : Memory.readCString(namePtr);
                    const sig  = sigPtr.isNull()  ? '<null>' : Memory.readCString(sigPtr);
                    const modOfFn = Process.findModuleByAddress(fnPtr);
                    const where = modOfFn ? `${modOfFn.name} +0x${fnPtr.sub(modOfFn.base).toString(16)}` : fnPtr.toString();
                    console.log(`  ${name}${sig} -> ${where} (${fnPtr})`);
                  } catch(e) { console.log("  [!] register row parse error:", e); }
                }
              } catch(e) { console.log("[!] RegisterNatives handler error:", e); }
            }
          });
          registerAttached = true;
          console.log("[*] Attached to RegisterNatives at", reg);
        } catch(e) {
          console.log("[!] attach to RegisterNatives failed:", e);
        }
      }
    }

    // 3) check if the Java class is loaded; if so hook its method & call it
    if (!polledClass) {
      try {
        if (Java.available) {
          const classes = Java.enumerateLoadedClassesSync();
          // quick scan for package classes if they exist
          const matches = classes.filter(c => c.indexOf("com.dozingcatsoftware") === 0);
          if (matches.length > 0) {
            console.log("[*] Some loaded classes in package:", matches.slice(0,10));
          }
          if (classes.indexOf(TARGET_CLASS) !== -1) {
            polledClass = true;
            console.log("[*] Target Java class is loaded:", TARGET_CLASS);
            Java.perform(function() {
              try {
                const C = Java.use(TARGET_CLASS);
                if (C && C.baseUrlFromJNI) {
                  // hook impl
                  try {
                    C.baseUrlFromJNI.implementation = function() {
                      const r = this.baseUrlFromJNI();
                      try { console.log("[java] " + TARGET_CLASS + ".baseUrlFromJNI() ->", r); } catch(e){}
                      return r;
                    };
                    console.log("[*] hooked " + TARGET_CLASS + ".baseUrlFromJNI");
                  } catch(e) { console.log("[!] hooking Java method failed:", e); }
                  // try call
                  try {
                    const v = C.baseUrlFromJNI();
                    console.log("[call] " + TARGET_CLASS + ".baseUrlFromJNI() returned ->", v);
                  } catch(e) { console.log("[call] calling baseUrlFromJNI failed (may need init):", e); }
                } else {
                  console.log("[!] Java class loaded but method not found");
                }
              } catch(e) { console.log("[!] Java.perform inner error:", e); }
            });
          }
        }
      } catch(e) { /* ignore errors during class enumeration */ }
    }

    // stop the interval if we've done everything useful
    if (polledModule && (moduleScanDone || !polledModule) && (polledClass || registerAttached)) {
      // keep interceptors active but stop polling
      clearInterval(interval);
      console.log("[*] Polling ended (interceptors remain active).");
    }
  } catch(e) {
    // don't spam errors
    // but print once if something odd happens
    console.log("[!] poll loop error (ignored):", e);
  }

}, 500);
