import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text_filed/text_filed.dart';
import 'package:general_register/features/authentication/display/attributes/sign_in_attributes.dart';

class SignInWebLayout extends StatelessWidget {
  SignInAttributes attributes;

  SignInWebLayout({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width / 3,
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: BuildText(
            attributes: attributes.title,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
          width: MediaQuery.of(context).size.width / 3,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BuildTextField(attributes: attributes.emailAttributes),
              BuildTextField(attributes: attributes.passwordAttributes),
              BuildElevatedButton(attributes: attributes.signInButtonAttributes),
            ],
          ),
        ),
      ],
    );
  }
}
