import 'package:flutter/material.dart';

Widget buildErrorText({required ErrorTextAttributes attributes}) {
  return Visibility(
    visible: attributes.isVisible,
    child: Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        attributes.message,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class ErrorTextAttributes {
  String message;
  bool isVisible;

  ErrorTextAttributes({required this.message, required this.isVisible});
}
