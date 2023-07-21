import 'package:dartz/dartz.dart';
import 'package:general_register/common/errors/exceptions.dart';
import 'package:general_register/common/errors/failures.dart';
import 'package:general_register/features/authentication/data/datasources/remote_data_source/sign_in_remote_data_source.dart';
import 'package:general_register/features/authentication/domain/entities/user_info_entity.dart';
import 'package:general_register/features/authentication/domain/reositories/sign_in_repository.dart';

class SignInRepositoryImpl implements SignInRepository {
  final SignInRemoteDataSource _remoteDataSource;

  SignInRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, UserInfoEntity>> signInUserWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final response = await _remoteDataSource.signInUserWithEmailPassword(
          email: email, password: password);
      return response;
    } on ServerException {
      return Left(ServerFailure(errorMessage: "This is a server exception"));
    }
  }
}
