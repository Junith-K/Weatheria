import 'package:flutter/material.dart';
import 'home.dart';
import 'chooselocation.dart';
import 'loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/loading': (context)=>Loading(),
      '/home': (context)=>Home(),
      '/choose': (context)=>ChooseLocation(),
    },
  ));
}

