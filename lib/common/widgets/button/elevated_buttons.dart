import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildElevatedButton({
  required String buttonName,
  required void Function() onPressed,
  double? buttonWidth,
}) {
  return SizedBox(
    width: buttonWidth,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonName),
    ),
  );
}
