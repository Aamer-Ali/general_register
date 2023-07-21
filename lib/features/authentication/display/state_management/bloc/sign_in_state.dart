part of 'sign_in_bloc.dart';

abstract class SignInState extends Equatable {

  const SignInState();
}

class SignInInitialState extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInLoadingState extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInSuccessState extends SignInState {
  UserInfoEntity userInfoEntity;

  SignInSuccessState({required this.userInfoEntity});

  @override
  List<Object?> get props => [userInfoEntity];
}

class SignInErrorState extends SignInState {
  final String? message;

  const SignInErrorState({this.message});

  @override
  List<Object?> get props => [message];
}
