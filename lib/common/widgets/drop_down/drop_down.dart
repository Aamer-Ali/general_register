import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildDropDown extends StatelessWidget {
  final DropDownAttributes attributes;

  const BuildDropDown({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            attributes.label == null
                ? Container()
                : Expanded(
                    flex: 1, child: BuildSimpleText(attributes: TextAttributes(text: attributes.label.toString()))),
            Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          focusColor: Colors.transparent,
                          value: attributes.selectedValue ?? attributes.items[0],
                          items: attributes.items.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value.label),
                            );
                          }).toList(),
                          onChanged: attributes.onItemChanged),
                    ),
                  ),
                )),
          ],
        ),
        Visibility(
          visible: !attributes.isValid,
          child: BuildSimpleText(
            attributes: TextAttributes(
              text: attributes.errorMessage,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
