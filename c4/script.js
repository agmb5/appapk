Java.perform(function() {
    var MainActivity = Java.use("com.example.combination.MainActivity");
    
    // Hook getdata to see URL and response
    MainActivity.getdata.implementation = function(url) {
        console.log("[+] URL being fetched: " + url);
        var result = this.getdata(url);
        console.log("[+] Encrypted data received: " + result);
        return result;
    };
    
    // Hook decrypt to see plaintext
    MainActivity.decrypt.overload('java.lang.String', 'java.lang.String', 'javax.crypto.SecretKey', 'javax.crypto.spec.IvParameterSpec').implementation = function(alg, ciphertext, key, iv) {
        console.log("[+] Cipher text: " + ciphertext);
        var plaintext = this.decrypt(alg, ciphertext, key, iv);
        console.log("[+] Decrypted text: " + plaintext);
        return plaintext;
    };
});

