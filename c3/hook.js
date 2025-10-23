Java.perform(function() {
    console.log("Waiting for native library to load...");
    
    // Wait for the library to load
    var checkLib = setInterval(function() {
        try {
            var nativeLib = Process.getModuleByName("libnative-lib.so");
            clearInterval(checkLib);
            
            console.log("Native lib loaded at: " + nativeLib.base);
            
            // List all exports
            var exports = nativeLib.enumerateExports();
            exports.forEach(function(exp) {
                if (exp.name.indexOf("challenge") !== -1 || exp.name.indexOf("Java_") !== -1) {
                    console.log("Found: " + exp.name + " at " + exp.address);
                }
            });
            
            // Call baseUrlFromJNI
            var ApiHelperJava = Java.use("com.dozingcatsoftware.ApiHelperJava");
            var result = ApiHelperJava.baseUrlFromJNI();
            console.log("baseUrlFromJNI returned: " + result);
            
        } catch(e) {
            // Library not loaded yet, keep waiting
        }
    }, 100);
});