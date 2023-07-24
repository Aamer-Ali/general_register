import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildSimpleText extends StatelessWidget {
  const BuildSimpleText({super.key, required this.attributes});

  final TextAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        attributes.text,
        style: TextStyle(
          color: attributes.color,
          fontSize: 14,
          fontWeight: attributes.bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}