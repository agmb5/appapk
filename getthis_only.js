Java.perform(function () {
  try {
    var Api1 = Java.use('com.example.combination.ApiHelper1');
    var Api2 = Java.use('com.example.combination.ApiHelper2');
    console.log("getthis1() =>", Api1.getthis1());
    console.log("getthis2() =>", Api2.getthis2());
  } catch (e) { console.log(e && e.stack ? e.stack : e); }
});
