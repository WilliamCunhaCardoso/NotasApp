import 'package:flutter/material.dart';

//* Light Theme
var lightTheme = ThemeData(
  //* General Theming
  primaryColor: Color(0xffccbbff),
  accentColor: Color(0xffccbbff),
  //* Theming AppBar
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      ),
    ),
  ),
  //* Background keeps default
);

//* Dark Theme
var darkTheme = ThemeData(
  //* General Theming
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black12,
  primaryColor: Color(0xffccbbff),
  accentColor: Color(0xffccbbff),
  //* Theming AppBar
  appBarTheme: AppBarTheme(
    color: Colors.black,
    textTheme: TextTheme(
      title: TextStyle(
        color: Color(0xffccbbff),
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      ),
    ),
    actionsIconTheme: IconThemeData(color: Color(0xffccbbff)),
    iconTheme: IconThemeData(color: Color(0xffccbbff))
  ),
);
