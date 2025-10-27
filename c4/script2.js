Java.perform(function() {
    var combo = "sstctctsssstcstcsscstttssstc";
    var map = { s: 0x7f080192, t: 0x7f0801d3, c: 0x7f080078 }; // from smali

    Java.choose("com.example.combination.MainActivity", {
        onMatch: function(act) {
            var Runnable = Java.use("java.lang.Runnable");
            for (var i = 0; i < combo.length; i++) {
                (function(idx) {
                    setTimeout(function() {
                        try {
                            var ch = combo.charAt(idx);
                            var view = act.findViewById(map[ch]);
                            if (view) {
                                act.runOnUiThread(Runnable.$new({ run: function() { view.performClick(); } }));
                                console.log("pressed", ch, "idx", idx);
                            } else console.log("no view for", ch);
                        } catch (e) { console.log("err:", e); }
                    }, idx * 120);
                })(i);
            }
        },
        onComplete: function() {}
    });
});
