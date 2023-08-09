import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/drop_down/drop_down.dart';
import 'package:general_register/common/widgets/menu_bar/menu_bar.dart';
import 'package:general_register/common/widgets/radio/radio_button.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider.dart';
import 'package:general_register/common/widgets/spacer/spacer.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';
import 'package:general_register/common/widgets/text_filed/text_filed.dart';
import 'package:general_register/features/school_information/display/attributes/school_information_attributes.dart';

// class SchoolPageWeb extends StatelessWidget {
//   SchoolPageWeb({super.key, required this.attributes});
//
//   SchoolInformationAttributes attributes;
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
//                   buildVerticalSpacer(),
//                   BuildTextField(attributes: attributes.udise),
//                   BuildTextField(attributes: attributes.schoolName),
//                   BuildTextField(attributes: attributes.address),
//                   BuildTextField(attributes: attributes.phone),
//                   BuildTextField(attributes: attributes.email),
//                   BuildTextField(attributes: attributes.cluster),
//                   BuildTextField(attributes: attributes.block),
//                   BuildTextField(attributes: attributes.state),
//                   BuildTextField(attributes: attributes.district),
//                   BuildTextField(attributes: attributes.pin),
//                 ],
//               ),
//             ),
//             buildHorizontalSpacer(),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   attributes.image == null
//                       ? Image.asset("assets/images/ic_launcher.png", width: 110, height: 110)
//                       : Image.memory(attributes.image!, width: 110, height: 110),
//                   buildVerticalSpacer(),
//                   BuildElevatedButton(attributes: attributes.updateLogoButton),
//                   BuildTextField(attributes: attributes.medium),
//
//                   BuildRangeSlider(attributes: attributes.classRang),
//
//                   // BuildDropDown(attributes: attributes.lowerClassList),
//                   // BuildDropDown(attributes: attributes.upperClassList),
//
//                   BuildRadioButton(attributes: attributes.isMultipleRegister),
//                   BuildTextField(attributes: attributes.board),
//                   BuildTextField(attributes: attributes.management),
//
//                   BuildDropDown(attributes: attributes.aidTypeList),
//                   BuildElevatedButton(
//                     attributes: attributes.updateInformationButton,
//                   ),
//                   // BuildRangeSlider(attributes: attributes.classRang)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class SchoolPageWeb extends StatelessWidget {
//   SchoolPageWeb({super.key, required this.attributes});
//
//   SchoolInformationAttributes attributes;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       surfaceTintColor: Colors.white,
//       elevation: 8,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             buildVerticalSpacer(),
//             Column(children: [
//
//             ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 attributes.image == null
//                       ? Image.asset("assets/images/ic_launcher.png", width: 110, height: 110)
//                       : Image.memory(attributes.image!, width: 110, height: 110),
//                 // buildVerticalSpacer(),
//                   BuildElevatedButton(attributes: attributes.updateLogoButton),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(flex:2,child: BuildTextField(attributes: attributes.udise)),
//                 buildHorizontalSpacer(),
//                 Flexible(flex:4,child: BuildTextField(attributes: attributes.schoolName)),
//                 buildHorizontalSpacer(),
//                 Flexible(flex:1,child: BuildTextField(attributes: attributes.medium)),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(child: BuildTextField(attributes: attributes.board)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.management)),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(child: BuildTextField(attributes: attributes.phone)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.email)),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(child: BuildTextField(attributes: attributes.address)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.cluster)),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(child: BuildTextField(attributes: attributes.block)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.state)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.district)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildTextField(attributes: attributes.pin)),
//               ],
//             ),
//             Row(
//               children: [
//                 Flexible(child: BuildRangeSlider(attributes: attributes.classRang)),
//                 buildHorizontalSpacer(),
//                 Flexible(child: BuildDropDown(attributes: attributes.aidTypeList)),
//               ],
//             ),
//             Row(
//               children: [Flexible(child: BuildElevatedButton(attributes: attributes.updateInformationButton))],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SchoolPageWeb extends StatelessWidget {
  SchoolPageWeb({super.key, required this.attributes});

  SchoolInformationAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildVerticalSpacer(),
            Row(
              children: [
                Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(flex: 2, child: BuildTextField(attributes: attributes.udise)),
                          buildHorizontalSpacer(),
                          Flexible(flex: 4, child: BuildTextField(attributes: attributes.schoolName)),
                          buildHorizontalSpacer(),
                          Flexible(flex: 1, child: BuildTextField(attributes: attributes.medium)),
                        ],
                      ),
                      buildVerticalSpacer(height: 20),
                      Row(
                        children: [
                          Flexible(child: BuildTextField(attributes: attributes.phone)),
                          buildHorizontalSpacer(),
                          Flexible(child: BuildTextField(attributes: attributes.email)),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FittedBox(
                    child: Container(
                      margin: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              attributes.image == null
                                  ? Image.asset("assets/images/ic_launcher.png", width: 110, height: 110)
                                  : Image.memory(attributes.image!, width: 110, height: 110),
                              buildVerticalSpacer(),
                              BuildElevatedButton(attributes: attributes.updateLogoButton),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            buildVerticalSpacer(height: 20),
            Row(
              children: [
                Flexible(child: BuildTextField(attributes: attributes.address)),
                buildHorizontalSpacer(),
                Flexible(child: BuildTextField(attributes: attributes.cluster)),
              ],
            ),
            buildVerticalSpacer(height: 20),
            Row(
              children: [
                Flexible(child: BuildTextField(attributes: attributes.block)),
                buildHorizontalSpacer(),
                Flexible(child: BuildTextField(attributes: attributes.state)),
                buildHorizontalSpacer(),
                Flexible(child: BuildTextField(attributes: attributes.district)),
                buildHorizontalSpacer(),
                Flexible(child: BuildTextField(attributes: attributes.pin)),
              ],
            ),
            buildVerticalSpacer(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(flex:2,child: BuildRangeSlider(attributes: attributes.classRang)),
                buildHorizontalSpacer(),
                // Flexible(flex:1,child: Row(
                //   children: [
                //     BuildText(attributes: TextAttributes(text: "Has Multiple Register")),
                //     Switch(value: true, onChanged: (value){}),
                //   ],
                // )),
                Flexible(flex:2,child: BuildRadioButton(attributes: attributes.isMultipleRegister)),
                buildHorizontalSpacer(),
                Flexible(flex:2,child: BuildDropDown(attributes: attributes.aidTypeList)),
              ],
            ),
            buildVerticalSpacer(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Flexible(child: BuildElevatedButton(attributes: attributes.updateInformationButton))],
            ),
            buildVerticalSpacer(height: 20),
          ],
        ),
      ),
    );
  }
}
