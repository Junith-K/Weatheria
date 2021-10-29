import 'package:flutter/material.dart';
import 'home.dart';
import 'chooselocation.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      '/home':(context)=>Home(),
      '/choose': (context)=>ChooseLocation(),
    },
  ));
}

