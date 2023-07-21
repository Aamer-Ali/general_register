import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/button/elevated_buttons.dart';
import 'package:general_register/common/widgets/text/error_text.dart';
import 'package:general_register/common/widgets/spacer/vertical_spacer.dart';
import 'package:general_register/common/widgets/text_filed/text_filed_with_icon.dart';
import 'package:general_register/features/authentication/display/state_management/bloc/sign_in_bloc.dart';

class SignInMobileLayout extends StatelessWidget {
  TextEditingController emailController;
  TextEditingController passwordController;
  ErrorTextAttributes errorTextAttributes;

  SignInMobileLayout({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.errorTextAttributes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildErrorText(attributes: errorTextAttributes),
        buildTextFieldWithIcon(
          controller: emailController,
          labelText: "Email",
          hintText: "Enter email address here",
          icon: Icons.alternate_email_outlined,
        ),
        buildVerticalSpacer(),
        buildTextFieldWithIcon(
          controller: passwordController,
          labelText: "Password",
          hintText: "Enter your password",
          icon: Icons.lock,
          obscureText: true,
        ),
        buildVerticalSpacer(),
        buildVerticalSpacer(height: 40),
        buildElevatedButton(
          buttonName: "Login",
          onPressed: () {
            context.read<SignInBloc>().add(
                  UserSignInWithEmailPasswordEvent(
                    email: emailController.text,
                    password: passwordController.text,
                    context: context,
                  ),
                );
          },
        ),
      ],
    );
  }
}
