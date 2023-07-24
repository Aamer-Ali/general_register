import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/spacer/spacer.dart';
import 'package:general_register/common/widgets/text_filed/text_filed.dart';
import 'package:general_register/features/authentication/display/attributes/sign_in_attributes.dart';

class SignInMobileLayout extends StatelessWidget {
  SignInAttributes attributes;

  SignInMobileLayout({
    super.key,
    required this.attributes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BuildTextField(attributes: attributes.emailAttributes),
        buildVerticalSpacer(),
        BuildTextField(attributes: attributes.passwordAttributes),
        buildVerticalSpacer(),
        buildVerticalSpacer(height: 40),
        BuildElevatedButton(
          attributes: attributes.signInButtonAttributes,
        ),
      ],
    );
  }
}
