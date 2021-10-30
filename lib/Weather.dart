import 'dart:convert';

import 'package:http/http.dart';

class Weather{
  String location;
  String weather;
  double pm25;
  double pm10;
  double co;
  double temp;
  String code;
  int dayornight;
  String time;

  Weather({required this.location,required this.weather, required this.pm25,required this.pm10, required this.co ,required this.temp,required this.code, required this.dayornight, required this.time});

  Future<void> getData() async{

    try{
      Response response = await get(Uri.parse("http://api.weatherapi.com/v1/current.json?key=e0c823d1d7d6400b82445408213010&q=$location&aqi=yes"));
      Map data =jsonDecode(response.body);
      print(data);
      location = data["location"]["name"];
      weather = data["current"]["condition"]["text"];
      temp = data["current"]["temp_c"];
      time = data["location"]["localtime"];
      time = time.substring(11);
      pm25 = data["current"]["air_quality"]["pm2_5"];
      pm10 = data["current"]["air_quality"]["pm10"];
      co = data["current"]["air_quality"]["co"];
      co.toInt();
      pm25.toInt();
      pm10.toInt();
      dayornight = data["current"]["is_day"];
      print(time);
    }
    catch(e){
      print("Error Caught : $e");
      location = "Location NOT Found!";
    }
  }
}