import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildOutlinedButton({
  required String buttonName,
  required void Function() onPressed,
  double? buttonWidth,
}) {
  return SizedBox(
    width: buttonWidth,
    child: OutlinedButton(
      onPressed: onPressed,
      child: Text(buttonName),
    ),
  );
}
