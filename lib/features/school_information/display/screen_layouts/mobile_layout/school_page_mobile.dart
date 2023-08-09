import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/drop_down/drop_down.dart';
import 'package:general_register/common/widgets/radio/radio_button.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider.dart';
import 'package:general_register/common/widgets/spacer/spacer.dart';
import 'package:general_register/common/widgets/text_filed/text_filed.dart';
import 'package:general_register/features/school_information/display/attributes/school_information_attributes.dart';

class SchoolPageMobile extends StatelessWidget {
  SchoolPageMobile({super.key, required this.attributes});

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
            attributes.image == null
                ? Image.asset("assets/images/ic_launcher.png", width: 110, height: 110)
                : Image.memory(attributes.image!, width: 110, height: 110),
            buildVerticalSpacer(),
            BuildElevatedButton(attributes: attributes.updateLogoButton),
            buildVerticalSpacer(height: 20),
            BuildTextField(attributes: attributes.udise),
            BuildTextField(attributes: attributes.schoolName),
            BuildTextField(attributes: attributes.medium),
            BuildTextField(attributes: attributes.phone),
            BuildTextField(attributes: attributes.email),
            BuildTextField(attributes: attributes.address),
            BuildTextField(attributes: attributes.cluster),
            BuildTextField(attributes: attributes.block),
            BuildTextField(attributes: attributes.state),
            BuildTextField(attributes: attributes.district),
            BuildTextField(attributes: attributes.pin),
            BuildRangeSlider(attributes: attributes.classRang),
            BuildRadioButton(attributes: attributes.isMultipleRegister),
            BuildDropDown(attributes: attributes.aidTypeList),
            BuildElevatedButton(attributes: attributes.updateInformationButton),
            buildVerticalSpacer(),
          ],
        ),
      ),
    );
  }
}