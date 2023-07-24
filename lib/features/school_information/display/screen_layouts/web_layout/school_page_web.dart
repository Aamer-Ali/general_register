import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/drop_down/drop_down.dart';
import 'package:general_register/common/widgets/radio/radio_button.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider.dart';
import 'package:general_register/common/widgets/spacer/spacer.dart';
import 'package:general_register/common/widgets/text_filed/text_filed.dart';
import 'package:general_register/features/school_information/display/attributes/school_information_attributes.dart';

class SchoolPageWeb extends StatelessWidget {
  SchoolPageWeb({super.key, required this.attributes});

  RangeValues _currentRangeValues = const RangeValues(1, 12);

  SchoolInformationAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  buildVerticalSpacer(),
                  BuildTextField(attributes: attributes.udise),
                  BuildTextField(attributes: attributes.schoolName),
                  BuildTextField(attributes: attributes.address),
                  BuildTextField(attributes: attributes.phone),
                  BuildTextField(attributes: attributes.email),
                  BuildTextField(attributes: attributes.cluster),
                  BuildTextField(attributes: attributes.block),
                  BuildTextField(attributes: attributes.state),
                  BuildTextField(attributes: attributes.district),
                  BuildTextField(attributes: attributes.pin),
                ],
              ),
            ),
            buildHorizontalSpacer(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  attributes.image == null
                      ? Image.asset("assets/images/ic_launcher.png", width: 110, height: 110)
                      : Image.memory(attributes.image!, width: 110, height: 110),
                  buildVerticalSpacer(),
                  BuildElevatedButton(attributes: attributes.updateLogoButton),
                  BuildTextField(attributes: attributes.medium),

                  BuildRangeSlider(attributes: attributes.classRang),

                  // BuildDropDown(attributes: attributes.lowerClassList),
                  // BuildDropDown(attributes: attributes.upperClassList),

                  BuildRadioButton(attributes: attributes.isMultipleRegister),
                  BuildTextField(attributes: attributes.board),
                  BuildTextField(attributes: attributes.management),

                  BuildDropDown(attributes: attributes.aidTypeList),
                  BuildElevatedButton(
                    attributes: attributes.updateInformationButton,
                  ),
                  // BuildRangeSlider(attributes: attributes.classRang)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
