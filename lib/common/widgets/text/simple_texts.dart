import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildText extends StatelessWidget {
  const BuildText({super.key, required this.attributes});

  final TextAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        attributes.text,
        style: TextStyle(
          color: attributes.color,
          fontSize: attributes.fontSize,
          fontWeight: attributes.bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}