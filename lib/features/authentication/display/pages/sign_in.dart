import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/app_bar/app_bar.dart';
import 'package:general_register/common/widgets/text/error_text.dart';
import 'package:general_register/features/authentication/display/state_management/bloc/sign_in_bloc.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../screens_layouts/layouts.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Login"),
      body: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          var errorFieldAttributes = ErrorTextAttributes(
            message: state is SignInErrorState ? state.message! : "",
            isVisible: state is SignInErrorState ? true : false,
          );

          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kIsWeb && ResponsiveBreakpoints.of(context).isDesktop
                      ? SignInWebLayout(
                          emailController: _emailController,
                          passwordController: _passwordController,
                          errorTextAttributes: errorFieldAttributes,
                        )
                      : SignInMobileLayout(
                          emailController: _emailController,
                          passwordController: _passwordController,
                          errorTextAttributes: errorFieldAttributes,
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
