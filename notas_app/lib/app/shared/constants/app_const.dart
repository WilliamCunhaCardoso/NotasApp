import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  primaryColor: Color(0xffccbbff),
  accentColor: Color(0xffccbbff),
);

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black12,
  primaryColor: Color(0xffccbbff),
  accentColor: Color(0xffccbbff),
  appBarTheme: AppBarTheme(
    color: Colors.black,
    textTheme: TextTheme(
      title: TextStyle(
        color: Color(0xffccbbff),
      ),
    ),
  ),
);
