import 'dart:typed_data';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/button/button_attribute.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider_attributes.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';
import 'package:general_register/common/widgets/text_filed/text_field_attributes.dart';
import 'package:general_register/features/school_information/display/attributes/school_information_attributes.dart';
import 'package:general_register/features/school_information/display/state_management/bloc/school_information_bloc.dart';

class SchoolInformationViewModel {
  GlobalKey<FormState> formKey;

  final TextEditingController _udiseController = TextEditingController();
  final TextEditingController _schoolNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _clusterController = TextEditingController();
  final TextEditingController _blockController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  final TextEditingController _mediumController = TextEditingController();
  final TextEditingController _boardController = TextEditingController();
  final TextEditingController _managementController = TextEditingController();
  String sliderMessage = "";

  SchoolInformationViewModel({
    required this.formKey,
  });

  SchoolInformationAttributes buildSchoolInformationAttributes(
      {required BuildContext context,
      Uint8List? logo,
      required List<RadioButtonValueAttribute> isMultipleRegister,
      required List<DropDownValueAttributes> upperClassList,
      required List<DropDownValueAttributes> lowerClassList,
      required List<DropDownValueAttributes> aidTypeList,
      int? currentSelectionIndex,
      DropDownValueAttributes? upperClassSelected,
      DropDownValueAttributes? lowerClassSelected,
      DropDownValueAttributes? aidTypeSelected,
      required RangeValues classSliderRange,
      required void Function() onSubmitSetState,
      required void Function(RangeValues) onChangeRang}) {
    return SchoolInformationAttributes(
      formKey: formKey,
      image: logo,
      udise: TextFieldAttributes(
        labelText: "Udise",
        controller: _udiseController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Proper Udise";
          } else {
            return null;
          }
        },
      ),
      schoolName: TextFieldAttributes(
        labelText: "School Name",
        controller: _schoolNameController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter School Name";
          } else {
            return null;
          }
        },
      ),
      address: TextFieldAttributes(
        labelText: "Address",
        controller: _addressController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Address";
          } else {
            return null;
          }
        },
      ),
      phone: TextFieldAttributes(
        labelText: "Phone Number",
        controller: _phoneController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Phone Number";
          } else {
            return null;
          }
        },
      ),
      email: TextFieldAttributes(
        labelText: "Email",
        controller: _emailController,
        functionOnValidated: (value) {
          if (value!.isEmpty || !EmailValidator.validate(value)) {
            return "Please Enter Email Address";
          } else {
            return null;
          }
        },
      ),
      cluster: TextFieldAttributes(
        labelText: "Cluster",
        controller: _clusterController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Cluster";
          } else {
            return null;
          }
        },
      ),
      block: TextFieldAttributes(
        labelText: "Bloc",
        controller: _blockController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Block";
          } else {
            return null;
          }
        },
      ),
      state: TextFieldAttributes(
        labelText: "State",
        controller: _stateController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter State";
          } else {
            return null;
          }
        },
      ),
      district: TextFieldAttributes(
        labelText: "District",
        controller: _districtController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter District";
          } else {
            return null;
          }
        },
      ),
      pin: TextFieldAttributes(
        labelText: "Pin Code",
        controller: _pinCodeController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Pin Code";
          } else {
            return null;
          }
        },
      ),
      medium: TextFieldAttributes(
        labelText: "Medium",
        controller: _mediumController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Medium";
          } else {
            return null;
          }
        },
      ),
      board: TextFieldAttributes(
        labelText: "Board",
        controller: _boardController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Board";
          } else {
            return null;
          }
        },
      ),
      management: TextFieldAttributes(
        labelText: "Management",
        controller: _managementController,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Management";
          } else {
            return null;
          }
        },
      ),
      updateInformationButton: ButtonAttributes(
        buttonName: "Update Information",
        onPressed: () {
          if (formKey!.currentState!.validate()) {
            print("Going to update information");
          }
          if (classSliderRange.start == classSliderRange.end ||
              classSliderRange.start > classSliderRange.end ||
              classSliderRange.start == 0) {
            sliderMessage = "Please select proper rang..";
            onSubmitSetState();
          } else {
            sliderMessage = "";
            onSubmitSetState();
          }
        },
      ),
      updateLogoButton: ButtonAttributes(
        buttonName: "Update Logo",
        onPressed: () {
          context.read<SchoolInformationBloc>().add(OnSchoolLogoChangeEvent());
        },
      ),
      lowerClassList: DropDownAttributes(
          label: "Lower Class",
          items: lowerClassList,
          selectedValue: lowerClassSelected,
          onItemChanged: (value) {
            context.read<SchoolInformationBloc>().add(
                  OnLowerClassChangeEvent(value!),
                );
          }),
      upperClassList: DropDownAttributes(
          label: "Upper Class",
          items: upperClassList,
          selectedValue: upperClassSelected,
          onItemChanged: (value) {
            context.read<SchoolInformationBloc>().add(
                  OnUpperClassChangeEvent(value!),
                );
          }),
      aidTypeList: DropDownAttributes(
          label: "Aid - Type",
          items: aidTypeList,
          selectedValue: aidTypeSelected,
          onItemChanged: (value) {
            context.read<SchoolInformationBloc>().add(
                  OnAidTypeChangeEvent(value!),
                );
          }),
      isMultipleRegister: RadioButtonAttributes(
        valueAttributes: isMultipleRegister,
        currentSelectedIndex: currentSelectionIndex ?? 0,
        onChanged: (value) {
          context.read<SchoolInformationBloc>().add(
                OnRadioButtonChangeEvent(isMultipleRegister.indexOf(value!)),
              );
        },
      ),
      classRang: RangSliderAttributes(
          errorTextAttributes: TextAttributes(text: sliderMessage),
          labelTextAttributes: TextAttributes(text: "Class Rang"),
          maxValue: 12,
          division: 12,
          currentRangeValues: classSliderRange,
          labels: RangeLabels(
            classSliderRange.start.round().toString(),
            classSliderRange.end.round().toString(),
          ),
          onChanged: onChangeRang),
    );
  }
}
