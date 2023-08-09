import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/button/button_attribute.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';
import 'package:general_register/common/widgets/text_filed/text_field_attributes.dart';
import 'package:general_register/features/authentication/display/attributes/sign_in_attributes.dart';
import 'package:general_register/features/authentication/display/state_management/bloc/sign_in_bloc.dart';

class SignInViewModel {
  final TextEditingController emailController;

  final TextEditingController passwordController;

  GlobalKey<FormState> formKey;

  SignInViewModel({
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });


  SignInAttributes buildSignInAttributes(BuildContext context) {
    return SignInAttributes(
      title: TextAttributes(text: "Login", fontSize: 30, color: Colors.white),
      emailAttributes: TextFieldAttributes(
        labelText: "Enter Email Address",
        controller: emailController,
        icon: Icons.alternate_email_rounded,
        functionOnValidated: (value) {
          if (value!.isEmpty || !EmailValidator.validate(value)) {
            return "Please Enter Proper Email Address";
          } else {
            return null;
          }
        },
      ),
      passwordAttributes: TextFieldAttributes(
        labelText: "Enter Password",
        controller: passwordController,
        icon: Icons.key,
        functionOnValidated: (value) {
          if (value!.isEmpty) {
            return "Please Enter Proper Password";
          } else {
            return null;
          }
        },
      ),
      formKey: formKey,
      signInButtonAttributes: ButtonAttributes(
        buttonWidth: double.infinity,
        buttonName: "Sign In",
        onPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<SignInBloc>().add(
                  UserSignInWithEmailPasswordEvent(
                    email: emailController.text,
                    password: passwordController.text,
                    context: context,
                  ),
                );
          }
        },
      ),
    );
  }

}
