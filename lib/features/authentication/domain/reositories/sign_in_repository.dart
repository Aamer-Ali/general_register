import 'package:dartz/dartz.dart';
import 'package:general_register/common/errors/failures.dart';
import 'package:general_register/features/authentication/domain/entities/user_info_entity.dart';

abstract class SignInRepository {
  Future<Either<Failure, UserInfoEntity>> signInUserWithEmailPassword({
    required String email,
    required String password,
  });
}
