import 'package:blog_app/core/Error/failures.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPasswords({
    required String email,
    required String name,
    required String password,
  });
  Future<Either<Failure, User>> loginWithEmailPasswords({
    required String email,
    required String password,
  });
}
