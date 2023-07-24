part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {
  const SignInEvent();
}

class UserSignInWithEmailPasswordEvent extends SignInEvent {
  final String email;
  final String password;
  final BuildContext context;

  const UserSignInWithEmailPasswordEvent({required this.email, required this.password, required this.context});
}

class SingInInitialEvent extends SignInEvent {}

