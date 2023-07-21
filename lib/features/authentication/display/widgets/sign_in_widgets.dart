import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/text/linke_text.dart';

Widget buildForgotPasswordText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: GestureDetector(
      onTap: () {},
      child: buildLinkText("Forgot Password"),
    ),
  );
}
