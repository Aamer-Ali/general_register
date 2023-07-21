import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  String? displayName;
  String? email;
  String? phoneNumber;
  String? photoURL;

  UserInfoEntity({
    required this.displayName,
    required this.email,
    required this.phoneNumber,
    required this.photoURL,
  });

  @override
  List<Object?> get props => [displayName, email, phoneNumber, photoURL];
}
