import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextField({
  required String labelText,
  required TextEditingController controller,
  String? hintText,
  bool obscureText = false,
  void Function(String value)? functionOnChange,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: TextField(
      controller: controller,
      onChanged: (value) => functionOnChange!(value),
      autocorrect: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}
