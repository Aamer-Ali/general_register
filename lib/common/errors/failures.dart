import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Failure {
  final String? errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required String? errorMessage})
      : super(errorMessage: errorMessage);
}

// class CacheFailure extends Failure {
//   CacheFailure({required String? errorMessage})
//       : super(errorMessage: errorMessage);
// }
//
// class NoActivityFoundFailure extends Failure {
//   NoActivityFoundFailure({required String? errorMessage})
//       : super(errorMessage: errorMessage);
// }
