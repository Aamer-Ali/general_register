import 'package:flutter/material.dart';

class TextAttributes {
  String text;
  bool bold;
  Color? color;
  double fontSize;

  TextAttributes({required this.text, this.bold = false, this.color, this.fontSize = 14});
}
