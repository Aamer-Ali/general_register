import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:general_register/common/cookies/CookieManager.dart';
import 'package:general_register/common/errors/failures.dart';
import 'package:general_register/common/values/constatns.dart';
import 'package:general_register/features/authentication/data/models/user_info_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

abstract class SignInRemoteDataSource {
  Future<Either<Failure, UserInfoModel>> signInUserWithEmailPassword({
    required String email,
    required String password,
  });
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  final SharedPreferences sharedPreferences;

  SignInRemoteDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Either<Failure, UserInfoModel>> signInUserWithEmailPassword(
      {required String email, required String password}) async {
    try {
      if (email.isEmpty || !EmailValidator.validate(email)) {
        return Left(ServerFailure(errorMessage: "Need to fill correct email address"));
      }
      if (password.isEmpty) {
        return Left(ServerFailure(errorMessage: "Need to fill correct password"));
      }
      // Firebase authentication
      try {
        final credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        if (credentials.user == null) {
          return Left(ServerFailure(errorMessage: "The user is not exist."));
        }
        // if (!credentials.user!.emailVerified) {
        //   toastInfo(message: "The email address you entered is not verified");
        //   return;
        // }

        var user = credentials.user;
        if (user != null) {
          if (kIsWeb) {
            CookieManager.addToCookie(AppConstants.IS_USER_LOGIN_KEY, true);
          } else {
            sharedPreferences.setBool(AppConstants.IS_USER_LOGIN_KEY, true);
          }
          return Right(
            UserInfoModel(
                displayName: user.displayName,
                email: user.email,
                phoneNumber: user.phoneNumber,
                photoURL: user.photoURL,
                uid: user.uid),
          );
        } else {
          return Left(ServerFailure(errorMessage: "The user is not exists"));
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          return Left(ServerFailure(errorMessage: "The user is not exists"));
        } else if (e.code == 'wrong-password') {
          return Left(ServerFailure(errorMessage: "The password you entered is wrong"));
        } else if (e.code == 'invalid-email') {
          return Left(ServerFailure(errorMessage: "You entered Invalid email address"));
        }
      }
    } catch (e) {
      return Left(ServerFailure(errorMessage: "Unknown Error"));
    }
    return Left(ServerFailure(errorMessage: "Some problem occurs please try after some time"));
  }
}
