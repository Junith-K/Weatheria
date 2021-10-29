import 'package:flutter/material.dart';
import 'package:weatheria/Weather.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Weather weather = Weather(location: "", weather: "", aqi: "", temp: "", type: "");
  //you can access the location by using weather.location


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          IconButton(onPressed: () async{
            dynamic result =await Navigator.pushNamed(context, '/choose');
          },
            icon: Icon(Icons.location_on),)
        ],
      ),
    );
  }
}
