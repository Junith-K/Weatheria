import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatheria/Weather.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map data = {};
  String day="";
  String det ="";
  Color col = Colors.green;


  @override
  Widget build(BuildContext context) {


    data = data.isNotEmpty? data: ModalRoute.of(context)!.settings.arguments as Map;
    day = data["dayornight"];
    if(data["pm25"]<=12){
      det="Safe to go out, safe AQI";
      col = Colors.green;
    }
    else if(data["pm25"]>12 && data["pm25"]<=35){
      det="Wear Cloth Masks, moderate AQI";
      col = Colors.green;
    }
    else if(data["pm25"]>35 && data["pm25"]<=55){
      det="Wear Surgical Masks, unhealthy AQI";
      col = Colors.green;
    }
    else if(data["pm25"]>55 && data["pm25"]<=150){
      det="Wear N95 Masks, unhealthy AQI";
      col = Colors.redAccent;
    }
    else if(data["pm25"]>150 && data["pm25"]<=250){
      det="Wear N99 Masks, very unhealthy AQI";
      col = Colors.red;
    }
    else if(data["pm25"]>250){
      det="HAZARDOUS!! DO NOT GO OUT";
      col = Colors.red;
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$day.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(

          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(data["location"],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(data["weather"]+",  ", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),),
                ),
                Container(
                  child: Text(data["time"].toString(),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text("${data["temp"]}°C", style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
            ),
            SizedBox(
              height: 200,
            ),
            Column(

              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(230, 10, 0, 0),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: IconButton(onPressed: () async{
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
                    iconSize: 35,
                    icon: Icon(Icons.location_on),
                    tooltip: "Choose Location",
                    color: Colors.white,),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(250, 8, 0, 0),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Choose Location ", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),),
                ),

              ],
            ),
            Container(
              color: Colors.white,
              height: 188,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text("PM2.5 Levels ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: "Poppins",
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text("${data["pm25"]} µg/m3", style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text("CO Levels ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Text("${data["co"]} µg/m3", style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text("Suggestion", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Text("$det", style: TextStyle(
                      fontSize: 20,
                      color: col,
                      fontWeight: FontWeight.w700,
                    ),),
                  )
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
