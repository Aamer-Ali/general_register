import 'package:flutter/material.dart';

Widget buildTextFieldWithIcon({
  required String labelText,
  required TextEditingController controller,
  String? hintText,
  bool obscureText = false,
  IconData? icon,
  void Function(String value)? functionOnChange,
}) {
  return TextField(
    controller: controller,
    onChanged: (value) => functionOnChange ?? (value),
    autocorrect: false,
    obscureText: obscureText,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      labelText: labelText,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}
