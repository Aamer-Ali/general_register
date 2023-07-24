// import 'package:flutter/material.dart';
// import 'package:general_register/pages/school/model/drop_down_value_model.dart';
//
// Widget buildDropDown(List<DropDownValueModel> model) {
//   return Container(
//     margin: const EdgeInsets.only(bottom: 10, top: 10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       border: Border.all(color: Colors.black, width: 1.0),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton(
//             focusColor: Colors.transparent,
//             value: model[0],
//             items: model.map((value) {
//               return DropdownMenuItem(
//                 value: value,
//                 child: Text(value.label),
//               );
//             }).toList(),
//             onChanged: (newValue) {}),
//       ),
//     ),
//   );
// }
