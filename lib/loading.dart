import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatheria/Weather.dart';
import 'dart:convert';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getDetails() async{
    Response response = await get(Uri.parse("http://ip-api.com/json/"));
    Map dat = jsonDecode(response.body);
    String loc;
    loc = dat["city"];


    Weather instance =Weather(location: loc, weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: 0, time: "");
    await instance.getData();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": instance.location,
      "weather": instance.weather,
      "pm25": instance.pm25.toInt(),
      "pm10": instance.pm10.toInt(),
      "co": instance.co.toInt(),
      "temp": instance.temp,
      "code": instance.code,
      "dayornight": instance.dayornight,
      "time": instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    getDetails();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 50.0,
        ),
      ),

    );;
  }
}
