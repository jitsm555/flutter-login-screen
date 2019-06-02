import 'package:flutter/material.dart';

const emailId = "jits555@gmail.com";
const userPassword = "jits555";

MaterialColor getMaterialColor() {
  Map<int, Color> color = {
    50: Color.fromRGBO(147, 205, 72, .1),
    100: Color.fromRGBO(147, 205, 72, .2),
    200: Color.fromRGBO(147, 205, 72, .3),
    300: Color.fromRGBO(147, 205, 72, .4),
    400: Color.fromRGBO(147, 205, 72, .5),
    500: Color.fromRGBO(147, 205, 72, .6),
    600: Color.fromRGBO(147, 205, 72, .7),
    700: Color.fromRGBO(147, 205, 72, .8),
    800: Color.fromRGBO(147, 205, 72, .9),
    900: Color.fromRGBO(147, 205, 72, 1),
  };
  MaterialColor customColor = MaterialColor(0xFF93cd48, color); // green color
  return customColor;
}