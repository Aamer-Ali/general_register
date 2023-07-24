// import 'package:flutter/material.dart';
// import 'package:general_register/common/widgets/radio/radio_button.dart';
// import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
// import 'package:general_register/common/widgets/text/simple_texts.dart';
// import 'package:general_register/common/widgets/text/text_attributes.dart';
//
// Widget buildIsMultipleRegister({
//   required List<RadioButtonValueAttribute> attributes,
//   required int currentSelectionIndex,
//   void Function(RadioButtonValueAttribute?)? onChanged,
// }) {
//   return Row(
//     children: [
//       Expanded(child: BuildSimpleText(attributes: TextAttributes(text: "Multiple Register Book"))),
//       ...attributes.map(
//         (element) => Expanded(
//           child: buildRadioButton(
//               attribute: element, currentSelection: attributes[currentSelectionIndex], onChanged: onChanged),
//         ),
//       ),
//     ],
//   );
// }
