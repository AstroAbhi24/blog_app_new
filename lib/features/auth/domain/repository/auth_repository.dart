import 'package:blog_app/core/Error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPasswords({
    required String email,
    required String name,
    required String password,
  });
  Future<Either<Failure, String>> loginWithEmailPasswords({
    required String email,
    required String password,
  });
}
