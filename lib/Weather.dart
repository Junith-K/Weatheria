import 'dart:convert';

import 'package:http/http.dart';

class Weather{
  String location;
  String weather;
  String aqi;
  String temp;
  String code;
  String dayornight;

  Weather({required this.location,required this.weather, required this.aqi,required this.temp,required this.code, required this.dayornight});

  Future<void> getData() async{

    try{
      Response response = await get(Uri.parse("https://api.weatherbit.io/v2.0/current?city=$location&key=6ce480eac3604567bc4a32216421d4d2"));
      Map data =jsonDecode(response.body);
      print(data);
      weather = data["data"][0]["weather"]["description"];
      temp = data["data"][0]["temp"];
    }
    catch(e){
      print("Error Caught : $e");
    }
  }
}