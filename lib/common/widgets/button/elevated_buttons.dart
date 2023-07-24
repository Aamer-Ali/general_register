import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/button_attribute.dart';

class BuildElevatedButton extends StatelessWidget {
  ButtonAttributes attributes;

  BuildElevatedButton({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: attributes.buttonWidth,
      child: ElevatedButton(
        onPressed: attributes.onPressed,
        child: Text(attributes.buttonName),
      ),
    );
  }
}
