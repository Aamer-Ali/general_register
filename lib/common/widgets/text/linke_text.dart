import 'package:flutter/material.dart';

Widget buildLinkText(String text) {
  return Text(
    text,
    style: const TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue,
      color: Colors.blue,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}
