import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/alert/alert_dialog.dart';
import 'package:general_register/common/widgets/alert/alert_dialog_attributes.dart';
import 'package:general_register/common/widgets/app_bar/app_bar.dart';
import 'package:general_register/features/authentication/display/state_management/bloc/sign_in_bloc.dart';
import 'package:general_register/features/authentication/display/view_model/sign_in_view_model.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../screens_layouts/layouts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late SignInViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SignInViewModel(
      emailController: _emailController,
      passwordController: _passwordController,
      formKey: _formKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Login"),
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInErrorState) {
            buildAlertDialog(state);
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    kIsWeb && ResponsiveBreakpoints.of(context).isDesktop
                        ? SignInWebLayout(
                            attributes: _viewModel.buildSignInAttributes(context),
                          )
                        : SignInMobileLayout(
                            attributes: _viewModel.buildSignInAttributes(context),
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  buildAlertDialog(var state) {
   return showDialog<String>(
      context: context,
      builder: (BuildContext context) => BuildAlertDialog(
        attributes: AlertDialogAttributes(
          title: AlertDialogTextAttributes(text: "Warning"),
          messages: [
            AlertDialogTextAttributes(text: state.message.toString()),
          ],
          actions: [
            AlertDialogActionButtonAttributes(
                text: "OK",
                onActionPressed: () {
                  context.read<SignInBloc>().add(SingInInitialEvent());
                })
          ],
        ),
      ),
    );
  }
}
