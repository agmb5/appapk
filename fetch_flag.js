// fetch_flag.js
Java.perform(function () {
  try {
    // Classes
    var Api1 = Java.use('com.example.combination.ApiHelper1');
    var Api2 = Java.use('com.example.combination.ApiHelper2');
    var MainActivity = Java.use('com.example.combination.MainActivity');

    // Java helpers
    var StringClass = Java.use('java.lang.String');
    var SecretKeySpec = Java.use('javax.crypto.spec.SecretKeySpec');
    var IvParameterSpec = Java.use('javax.crypto.spec.IvParameterSpec');
    var URL = Java.use('java.net.URL');
    var Scanner = Java.use('java.util.Scanner');
    var StringBuilder = Java.use('java.lang.StringBuilder');

    // helper: ascii to byte[]
    function asciiBytes(s) { return StringClass.$new(s).getBytes(); }

    // Key/IV from smali
    var key = SecretKeySpec.$new(asciiBytes("KaPdRgUkXp2s5v8y"), "AES");
    var iv  = IvParameterSpec.$new(asciiBytes("QfThWmZq4t7w!z%C"));

    // algorithm used by the app
    var ALG = "AES/CBC/PKCS5Padding";

    // call native methods to get base64 ciphertexts
    var b64_1 = Api1.getthis1();
    var b64_2 = Api2.getthis2();

    console.log("[+] getthis1() Base64:", b64_1);
    console.log("[+] getthis2() Base64:", b64_2);

    // decrypt using the app's own decrypt method
    var url1 = MainActivity.decrypt(ALG, b64_1, key, iv);
    var url2 = MainActivity.decrypt(ALG, b64_2, key, iv);

    console.log("[+] Decrypted URL1:", url1);
    console.log("[+] Decrypted URL2:", url2);

    // fetch helper (replicates getdata)
    function fetchRaw(u) {
      try {
        var s = Scanner.$new(URL.$new(u).openStream());
        var sb = StringBuilder.$new();
        while (s.hasNext()) {
          sb.append(s.nextLine());
        }
        s.close();
        return sb.toString();
      } catch (e) {
        return "[fetch error] " + e;
      }
    }

    var expected = fetchRaw(url1);
    console.log("[+] Expected pattern (len=" + (expected ? expected.length : "0") + "):", expected);

    var payload = fetchRaw(url2);
    console.log("[+] Payload snippet (first 400 chars):", payload ? payload.substring(0, Math.min(400, payload.length)) : payload);

    // regex-extract flag
    try {
      var Pattern = Java.use('java.util.regex.Pattern');
      var pat = Pattern.compile("COMP5618\\{[^}]+\\}");
      var m = pat.matcher(payload ? payload : "");
      if (m.find()) {
        console.log("[FLAG] " + m.group(0));
      } else {
        console.log("[!] No COMP5618{...} match in payload. Full payload printed above.");
      }
    } catch (e) {
      console.log("[!] Regex error:", e);
    }

  } catch (err) {
    // show full error stack
    console.log("Script error:", err && err.stack ? err.stack : err);
  }
});
