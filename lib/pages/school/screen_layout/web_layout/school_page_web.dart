// import 'package:flutter/material.dart';
// import 'package:general_register/common/widgets/button/elevated_buttons.dart';
// import 'package:general_register/common/widgets/spacer/spacer.dart';
// import 'package:general_register/common/widgets/text/simple_texts.dart';
// import 'package:general_register/pages/school/model/drop_down_value_model.dart';
// import 'package:general_register/pages/school/school_page_controller.dart';
// import 'package:general_register/pages/school/widgets/school_page_widget.dart';
//
// List<String> options = ["Yes", "No"];
//
// class SchoolPageWeb extends StatelessWidget {
//   SchoolPageWeb({super.key});
//
//   List<DropDownValueModel> ddModel = [
//     DropDownValueModel(label: "First", value: 1),
//     DropDownValueModel(label: "Second", value: 2),
//     DropDownValueModel(label: "Third", value: 3),
//     DropDownValueModel(label: "Forth", value: 4),
//     DropDownValueModel(label: "Fifth", value: 5),
//     DropDownValueModel(label: "Sixth", value: 6),
//     DropDownValueModel(label: "Seventh", value: 7),
//     DropDownValueModel(label: "Eight", value: 8),
//     DropDownValueModel(label: "Ninth", value: 9),
//     DropDownValueModel(label: "Tenth", value: 10),
//     DropDownValueModel(label: "Eleventh", value: 11),
//   ];
//
//   String currentOption = options[0];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   // buildTextField(
//                   //     labelText: "UDISE",
//                   //     functionOnChange: (value) {
//                   //       context
//                   //           .read<SchoolInformationBloc>()
//                   //           .add(UDISEChangeEvent(value));
//                   //     }),
//                   // buildTextField(
//                   //     labelText: "School Name",
//                   //     functionOnChange: (value) {
//                   //       context
//                   //           .read<SchoolInformationBloc>()
//                   //           .add(SchoolNameChangeEvent(value));
//                   //     }),
//                   // buildTextField(
//                   //     labelText: "Address",
//                   //     functionOnChange: (value) {
//                   //       context
//                   //           .read<SchoolInformationBloc>()
//                   //           .add(AddressChangeEvent(value));
//                   //     }),
//                   // buildTextField(
//                   //     labelText: "Phone Number",
//                   //     functionOnChange: (value) {
//                   //       context
//                   //           .read<SchoolInformationBloc>()
//                   //           .add(PhoneChangeEvent(value));
//                   //     }),
//                   // buildTextField(
//                   //     labelText: "Email",
//                   //     functionOnChange: (value) {
//                   //       context
//                   //           .read<SchoolInformationBloc>()
//                   //           .add(EmailChangeEvent(value));
//                   //     }),
//                   // buildTextField(labelText: "Cluster"),
//                   // buildTextField(labelText: "Block"),
//                   // buildTextField(labelText: "State"),
//                   // buildTextField(labelText: "District"),
//                   // buildTextField(labelText: "PinCode"),
//                 ],
//               ),
//             ),
//             buildHorizontalSpacer(),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/ic_launcher.png"),
//                   buildVerticalSpacer(),
//                   buildElevatedButton(
//                       buttonName: "Update Logo", onPressed: () {}),
//                   Row(
//                     children: [
//                       Expanded(
//                           flex: 1, child: buildSimpleText(text: "Lower Class")),
//                       Expanded(flex: 3, child: buildDropDown(ddModel)),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                           flex: 1, child: buildSimpleText(text: "Upper Class")),
//                       Expanded(flex: 3, child: buildDropDown(ddModel)),
//                     ],
//                   ),
//                   // buildTextField(labelText: "Medium"),
//                   Row(
//                     children: [
//                       Expanded(
//                           child:
//                               buildSimpleText(text: "Multiple Register Book")),
//                       Expanded(
//                         child: ListTile(
//                           title: Text(options[0]),
//                           leading: Radio(
//                             value: options[0],
//                             groupValue: currentOption,
//                             onChanged: (newValue) {
//                               print(newValue);
//                             },
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: ListTile(
//                           title: Text(options[1]),
//                           leading: Radio(
//                             value: options[1],
//                             groupValue: currentOption,
//                             onChanged: (newValue) {
//                               print(newValue);
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   // buildTextField(labelText: "Board"),
//                   // buildTextField(labelText: "Management"),
//                   // buildTextField(labelText: "AID - Type"),
//                   buildElevatedButton(
//                       buttonName: "Update School Information",
//                       onPressed: () {
//                         SchoolPageController(context)
//                             .handleSchoolInformationRegister();
//                       }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
