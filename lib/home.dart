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
          IconButton(onPressed: () async{
            dynamic result =await Navigator.pushNamed(context, '/choose');
            setState(() {
                data ={
                  "location": result["location"],
                  "weather": result["weather"],
                  "aqi": result["aqi"],
                  "temp": result["temp"],
                  "code": result["code"],
                  "dayornight": result["dayornight"],
                };
            });
          },

          icon: Icon(Icons.location_on),)
        ],
      ),

    );
  }
}
