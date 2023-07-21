import 'package:dartz/dartz.dart';
import 'package:general_register/common/errors/failures.dart';
import 'package:general_register/features/authentication/domain/entities/user_info_entity.dart';
import 'package:general_register/features/authentication/domain/reositories/sign_in_repository.dart';

class UserSignIn {
  final SignInRepository _repository;

  UserSignIn(this._repository);

  Future<Either<Failure, UserInfoEntity>> call(
      String email, String password) async {
    final response = await _repository.signInUserWithEmailPassword(
        email: email, password: password);
    return response;
  }
}
