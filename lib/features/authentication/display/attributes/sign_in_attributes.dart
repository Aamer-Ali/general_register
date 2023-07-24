import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/button_attribute.dart';
import 'package:general_register/common/widgets/text_filed/text_field_attributes.dart';

class SignInAttributes {
  TextFieldAttributes emailAttributes;
  TextFieldAttributes passwordAttributes;
  ButtonAttributes signInButtonAttributes;
  GlobalKey<FormState>? formKey;

  SignInAttributes(
      {required this.emailAttributes,
      required this.passwordAttributes,
      this.formKey,
      required this.signInButtonAttributes});
}
