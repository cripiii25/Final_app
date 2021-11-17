import 'dart:async';
import 'package:final_app/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image(
        image: NetworkImage(
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATIAAABgCAMAAACpKQ6/AAAAulBMVEX///8UFBTichb/7zRsbGynp6cyMjJPT0/ExMTh4eHw8PAiIiLdaxPxuYvWYQ/YZBCJiYmXl5fRWgzyshf99vBAQEC1tbX43aV7e3vfbRTKUAjSXA1dXV33yCHwpxL0vRz50ibS0tLojUL+6TH83izDRwTtp27LUgn56uDurSPpuqHzwprlgzPgezDacyzUaijLXyTqmg/1yyfddRTkgBn107bppyHpllDkmxzfjRXbgA/Xcwnx1cDtwaQ/vTSlAAAI7ElEQVR4nO2c/XubNhDH4xQjDF1rZ7NDE6+tu2RxvPVlb17bjf//3xoy2Oh7uhMSzmyePtxvsQCdPpxOp9ORi4tBBvlGJU3G02ipVK7/SJQh0xNrsv7lxB12kiSPR7Uo/fd4ZEh0Wl3Wv15+d9oewyWdZgagcyMriV32ndkiNvmcG9mOWM+ZTUejHiFbv3912XdmlNh5ka3fP6+R9ZeZReysyEpiB2R9ZTaxiJ0T2fr9SwNZT5lFfUK2/vASkPWSGWNk50O2/vCCIOsjs7EFLItzq+E0yEpiFrIeMlPEwGZp3XB6ZOuPt7c2sv4xy4CYsZc8ObL1x6tbxsp6xywdSWROjUwT45H1jFkCyCZGy4mRrT8+XAlW1jNmgEyZLadFVhJzIDsts4m7WQZzUmTrTw9OZB2YpcksWsax9tVxrJbTRQuJ6o555duz+XKapKSdiWAb0Re4kc3IHZiDpOpavRNZf7q52SGrV8yjmaUzEgloiSMXtURl9IblGK44DllCbjDbWXXV2KHu+tN9jUy0siBmyVIamBK0wHyhQdmEdhSyCelgbjRFfOflMyRoJTEPZN7M0tw1NDYlT/KFArRjkE1ID3Ez72YSMH3ZTCR2f/NgTkwWmSczqhyVueUkUieLUbS/4QhkKSV2MJ+UmZKm5CIx9GU8Mi9mbcRsZq137Md3BDLiKQxi8zZ1bWY7YgdkronpxaydGFXC4456hN2RkZRk1rgo0es2Ys3N64f7ipkPsnZm7jlWSxLIuGbWGRlN4q4OLTTw4CSja8D1bzc1MR9kbcy4VBZDoLmBOhlB5scgW5BLmwXF631Z4cr169cP/lbWxoyMKptHWqyIq1HauboaoifzKtkJ2IxKapGR0fBCSn3sJK6iWRTifK9ff/94tfNlV17I3Mzgrakmgk6Q5WFnSOPLkU4XzhmtjckcuGGilmRGOdgUT6spmC7ImyferET25s2tv5U5ma3MjpbQhP5kz5JOjH3EbWlt7L/DkNGZb6496EZyw5iQM+z9K2Q/vrkNQOZgBkazwjaYgmNmjOVrhnWBQDu0hSEjS6J8Pb5hmM0Zzswdsre/v6gmpjsua2UGjpa0QWawftdoATRgQ8M8vOogZMRXYhfQSNZF6BzffoXs7u1LfyuTmS0cOkDKvnql6Mlia1uA423P8NstJLyIUSclPYgOBdMDNbKf7p4byLoyAwY0bDZjoGpTjFPP3gKjH9r77QBkdOKTLszHJ9iEQ8GN8R7Zs7vnAcgEZuhPW4vigAiXEoQhK+5HJ7KVmxj0T7uGIBd1OyDTzHwnpsgMo4N47MzT4YhWzBUpPC8NREbCi4zrQZLU8TobZM/u/ghAxjOjaYEsWsjUYIQxewl4s0UYMhqQLQKITXC3LiIrmQUgY5lxezY1E15vLmvFQpiFISM5Cv/a2YmVo5WRaWb+yDhmqZBcZY0NFONzeeAcoyBkVBPFPZ92Nz6cPvgiK5kFIOOY0S2wobJlbDBx6IpVi1UP643MEqGHSvRpibxHdyHTzLxWTJGZXS3XSByB2tAmZNnNYcTHIZPNzKjs7oCsZOZvZcHMdDK9YQMNwmhMh3QkMsHMpJMaf2SamT8yjpnr+EHLtHZrGMQJyJR9TWdk7KI8bgfWiuzZ3Z/eE5NnRjfUluqT8yAj+x4tLSc1vshKZv7E+FgjcR/bVEHl6ZHZZiYelmRe0f9TMistzeVRq3Q6/CREvCayY32ZbWZCTjjTVX5hyJ6CWRlviIfQ9eoFzR4r5rwDMrJnwhfDIY6jWZVMDkRWrgEhzP7ih6tXb8nyE4JD2s5YnMOQZcSv4haAToQsNyLuUGSPIcR+lohpSRc559h0ZggSpnz0v6L3hCErnSZ6TDAzcrnCICQQ2dMRq7AllmfTk+z/3WOO6mVGNjN8lfSdhSF7YmLVcAg0OsKMvQsMMQlExi3Mppk5ia2CkD0GhGW+xC7o8jShdcJcbA7D3UP1Rla7RzSmxswAirWbgs1yG7LHkOjfJDaJTbELfKwVUjmVpgyW3I8OZPuIAk8YGjMDKJYrhfncguwxZI+JNga62VEDmJk2KtyO2maGScI9Ak9kzSGbYGYQrNLOcTq7kW0Dkj90VsII7SXQ0hFnppWaR092CN2Dy4sFM4MXRpHhouFEtg3Jl1E/hkO0ZibouOOD758yE9QOr8jmzQzUIWEhyS67kG1DsrKW58eOrFo2MMLdL6QkAypjExIFH3iGI+PNDJBhjEujFQeyrfehHEeMTDRSnJuCDdbOnka5cb1bsdPvzQvoUPevuEdhjGPOCesEQ0a2DTlh4qILWivVQEtIIq+2J1rItLuLK/wxJm0HZMSaJ8yP80ZVe7ciItv61mRIxJiKvEwto4g5gtgr6FNGqMXwNV2+LkEKVROZE6NyP54sZmwuQUK29a/JECNYdxa7kWaa+eX4TFfTBRlrZi212NKzGmRb99clXsR81TArP1tLoqnKnb5hQr0Ux9G3/wOyzyGVP39LxPxqX6Fg14MZatwJGcGTBLxf61k1ss8BJXmX734QkdGjeU5ocURbvSw55+72pRxnZivXdyVmG4fsS0gVo4vYRbs/s6P8mTPpTZOP3ZCxZiZnvuewWWOQfQmplW0h1lYanjNZfseZlH15x+8xOTMTmZW9upF99a/79yCmNRG9hBKO+XloWc4cCXRERujUerCvV9E0u4Xsa0jdvw+xCy58H5n/noG7Y0w+D8iEy7t+9cv89y4t9EvILE+syymyrwEf5PgS05Ims1ypKnk2X+aztu9otfqLaaT/KeAyysdiAd3CzMrlfi1axpDOi5vnp8l0qeb6t2UZzu5/VeKzrv/Zf/bl86lEALFvV/69D/jsayC2k43/x4UDsVo2hpU5N0wDsYNs/CbmQMyQDZ2YHLOBGMjmvvXb8oEYkU3bxByIWbJxb5gGYowULmQDMVYKGdlATJBCQjYQE6XgkQ3EHFJwQcZAzCmFbWUDsRYpaPQ/EGuVAq1sIOYhhYlsIOYlRYNsIOYpxR7ZQMxbilcDsVApBmLBUgzEgqUYiA0yyLcg/wE79uDaSyRQbwAAAABJRU5ErkJggg=='),
      ),
    );
  }
}
