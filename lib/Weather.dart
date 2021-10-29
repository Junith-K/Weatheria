import 'package:http/http.dart';

class Weather{
  String location;
  String weather;
  String aqi;
  String temp;
  String type;

  Weather({required this.location,required this.weather, required this.aqi,required this.temp,required this.type});

  Future<void> getData() async{

    try{
      Response response = await get(Uri.parse(""));

    }
    catch(e){
      print("Error Caught : $e");
    }
  }
}