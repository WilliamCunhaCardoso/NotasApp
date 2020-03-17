import 'package:flutter/material.dart';

var titleStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
  fontSize: 15,
);

InputDecoration titledct(String value) {
  var titleDecoration = InputDecoration(
    labelText: value,
    hintText: 'Comece a digitar o título',
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
  );
  return titleDecoration;
}

var bodyStyle = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 14, fontFamily: 'Open Sans');

InputDecoration bodydct(String value) {
  var bodyDecoration = InputDecoration(
    labelText: value,
    hintText: 'Comece a digitar o texto!!',
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
  );
  return bodyDecoration;
}

var dataStyle = TextStyle(
  fontWeight: FontWeight.w200,
  fontSize: 12,
);
