import 'package:flutter/material.dart';
import 'package:weatheria/Weather.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map data = {};


  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty? data: ModalRoute.of(context)!.settings.arguments as Map;


    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Text(data["location"]),
          ),
          Container(
            child: Text(data["weather"]),
          ),
          Container(
            child: Text(data["pm25"].toString()),
          ),
          Container(
            child: Text(data["pm10"].toString()),
          ),
          Container(
            child: Text(data["co"].toString()),
          ),
          Container(
            child: Text(data["temp"].toString()),
          ),
          Container(
            child: Text(data["time"].toString()),
          ),
          IconButton(onPressed: () async{
            dynamic result =await Navigator.pushNamed(context, '/choose');
            setState(() {
                data ={
                  "location": result["location"],
                  "weather": result["weather"],
                  "pm25": result["pm25"],
                  "pm10": result["pm10"],
                  "co": result["co"],
                  "temp": result["temp"],
                  "code": result["code"],
                  "dayornight": result["dayornight"],
                  "time": result["time"],
                };
            });
          },

          icon: Icon(Icons.location_on),)
        ],
      ),

    );
  }
}
