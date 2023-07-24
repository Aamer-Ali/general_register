import 'package:flutter/material.dart';

class TextFieldAttributes {
  String labelText;
  TextEditingController controller;
  String? hintText;
  bool obscureText;
  IconData? icon;
  void Function(String value)? functionOnChange;
  String? Function(String? value)? functionOnValidated;

  TextFieldAttributes({
    required this.labelText,
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.icon,
    this.functionOnChange,
    this.functionOnValidated,
  });
}
