import 'package:flutter/material.dart';
import 'package:weatheria/Weather.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.yellow,
        ),
      home: ChooseLocation(),
    );
  }
}



class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  TextEditingController _location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/worldj.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 70, 8.0, 8.0),
              child: TextField(

                autofocus: true,
                style: TextStyle(color: Colors.white),
                controller: _location,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 2.0,
                      ),
                  ),

                  labelText: 'Location',
                  hintText: "Enter the name of the City",
                ),
              ),
            ),

            ElevatedButton(onPressed: () async {
              Weather instance =Weather(location: _location.text, weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
              await instance.getData();

              Navigator.pop(context, {
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
            }, child: Text('Submit Location')),
            SizedBox(height: 40.0),
            Text(
              'Most Popular Searches',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Hong Kong", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Hong Kong",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Bangkok", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Bangkok",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "London", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("London",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Macau", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Macau",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Singapore", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Singapore",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Paris", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Paris",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Dubai", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Dubai",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),

                  ],
                ),
                Column(
                  children: <Widget>[
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "New York City", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("New York City",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Kuala Lumpur", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Kuala Lumpur",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Istanbul", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Istanbul",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Delhi", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Delhi",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Antalya", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Antalya",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Shenzhen", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Shenzhen",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(onPressed: () async{
                      Weather instance =Weather(location: "Mumbai", weather: "", pm25: 0, pm10: 0, co: 0, temp: 0, code: "", dayornight: "", time: "");
                      await instance.getData();

                      Navigator.pop(context, {
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
                    },
                        child: Text("Mumbai",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),)),

                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
