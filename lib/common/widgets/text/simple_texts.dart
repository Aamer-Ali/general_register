import 'package:flutter/material.dart';

Widget buildSimpleText({required String text, bool bold = false}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    ),
  );
}
