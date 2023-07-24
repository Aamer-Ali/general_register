import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/drop_down/drop_down.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildDropDownClassLimit extends StatelessWidget {
  const BuildDropDownClassLimit({super.key,required this.attributes});
  final DropDownAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: BuildSimpleText(attributes: TextAttributes(text: attributes.label.toString()))),
        Expanded(flex: 3, child: BuildDropDown( attributes: attributes)),
      ],
    );
  }
}