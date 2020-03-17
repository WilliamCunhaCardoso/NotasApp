import 'package:flutter/material.dart';

//* Title Style
var titleStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
  fontSize: 15,
);

//* Title Decoration
InputDecoration titledct(String value) {
  var titleDecoration = InputDecoration(
    labelText: value,
    hintText: 'Comece a digitar o título',
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
  );
  return titleDecoration;
}

//* Body / Conteudo Style
var bodyStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  fontFamily: 'Open Sans',
);

//* Body Conteudo Decoration
InputDecoration bodydct(String value) {
  var bodyDecoration = InputDecoration(
    labelText: value,
    hintText: 'Comece a digitar o texto!!',
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
  );
  return bodyDecoration;
}

//* Ultima Alteração Style
var dataStyle = TextStyle(
  fontWeight: FontWeight.w200,
  fontSize: 12,
);
