import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/button_attribute.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider_attributes.dart';
import 'package:general_register/common/widgets/text_filed/text_field_attributes.dart';

class SchoolInformationAttributes {
  GlobalKey<FormState>? formKey;
  TextFieldAttributes udise;
  TextFieldAttributes schoolName;
  TextFieldAttributes address;
  TextFieldAttributes phone;
  TextFieldAttributes email;
  TextFieldAttributes cluster;
  TextFieldAttributes block;
  TextFieldAttributes state;
  TextFieldAttributes district;
  TextFieldAttributes pin;
  TextFieldAttributes medium;
  TextFieldAttributes board;
  TextFieldAttributes management;

  Uint8List? image;
  RangSliderAttributes classRang;
  DropDownAttributes upperClassList;
  DropDownAttributes lowerClassList;
  DropDownAttributes aidTypeList;
  RadioButtonAttributes isMultipleRegister;
  ButtonAttributes updateInformationButton;
  ButtonAttributes updateLogoButton;

  SchoolInformationAttributes({
    this.formKey,
    required this.udise,
    required this.schoolName,
    required this.address,
    required this.phone,
    required this.email,
    required this.cluster,
    required this.block,
    required this.state,
    required this.district,
    required this.pin,
    required this.medium,
    required this.board,
    required this.management,
    this.image,
    required this.updateInformationButton,
    required this.updateLogoButton,
    required this.upperClassList,
    required this.lowerClassList,
    required this.aidTypeList,
    required this.isMultipleRegister,
    required this.classRang,
  });
}
