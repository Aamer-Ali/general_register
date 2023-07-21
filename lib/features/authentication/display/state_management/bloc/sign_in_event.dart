part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {
  const SignInEvent();
}

class UserSignInWithEmailPasswordEvent extends SignInEvent {
  final String email;
  final String password;
  final BuildContext context;

  const UserSignInWithEmailPasswordEvent(
      {required this.email, required this.password, required this.context});
}

class EmailEvent extends SignInEvent {
  final String email;

  const EmailEvent(this.email);
}

class PasswordEvent extends SignInEvent {
  final String password;

  const PasswordEvent(this.password);
}
