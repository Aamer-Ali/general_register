import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildRadioButton extends StatelessWidget {
  final RadioButtonAttributes attributes;

  const BuildRadioButton({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BuildText(attributes: TextAttributes(text: "Multiple Register Book"))),
        ...attributes.valueAttributes.map(
              (element) =>
              Expanded(
                  child:
                  ListTile(
                    title: Text(element.label),
                    leading: Radio(value: element,
                        groupValue: attributes.valueAttributes[attributes.currentSelectedIndex],
                        onChanged: attributes.onChanged),
                  ),

                // buildRadioButton(
                //     attribute: element,
                //     currentSelection: attributes.valueAttributes[attributes.currentSelectedIndex],
                //     onChanged: attributes.onChanged),
              ),
        ),
      ],
    );
  }
}

// Widget buildRadioButton({
//   required RadioButtonValueAttribute attribute,
//   required RadioButtonValueAttribute currentSelection,
//   void Function(RadioButtonValueAttribute?)? onChanged,
// }) {
//   return ListTile(
//     title: Text(attribute.label),
//     leading: Radio(value: attribute, groupValue: currentSelection, onChanged: onChanged),
//   );
// }
