import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatheria/Weather.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getDetails() async{
    Weather instance =Weather(location: "Washington", weather: "", aqi: "", temp: "", code: "", dayornight: "");
    await instance.getData();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": instance.location,
      "weather": instance.weather,
      "aqi": instance.aqi,
      "temp": instance.temp,
      "code": instance.code,
      "dayornight": instance.dayornight,
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
