import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle smallTextwithGrey = TextStyle(
    color: Colors.black45, 
    fontSize: 17.0, 
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleText = TextStyle(
    fontSize: 26.0,
    color: Colors.black, 
    fontWeight: FontWeight.w800,
    letterSpacing: 0.75,
  );
}
