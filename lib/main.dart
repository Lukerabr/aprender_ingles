import 'package:aprender_ingles/telas/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff795548),
      //accentColor: Colors.red
      scaffoldBackgroundColor: Color(0xff5e9b9)
    ),
  ));
}