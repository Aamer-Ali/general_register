import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/features/authentication/domain/entities/user_info_entity.dart';
import 'package:general_register/features/authentication/domain/usecases/user_sign_in.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  UserSignIn userSignIn;

  SignInBloc(this.userSignIn) : super(SignInInitialState()) {
    // on<EmailEvent>(_emailEvent);
    // on<PasswordEvent>(_passwordEvent);
    on<UserSignInWithEmailPasswordEvent>(_userSignInWithEmailPasswordEvent);
  }

  void _userSignInWithEmailPasswordEvent(UserSignInWithEmailPasswordEvent event, Emitter<SignInState> emit) async {
    final response = await userSignIn(event.email, event.password);
    response.fold((l) => emit(SignInErrorState(message: l.errorMessage)), (r) {
      event.context.goNamed(AppRoutesName.HOME_PAGE);
      // emit(SignInSuccessState(userInfoEntity: r));
    });
  }

// void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
//   emit(state.copyWith(email: event.email));
// }
//
// void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
//   emit(state.copyWith(password: event.password));
// }
}
