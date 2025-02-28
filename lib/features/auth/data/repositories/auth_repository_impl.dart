import 'package:blog_app/core/Error/exceptions.dart';
import 'package:blog_app/core/Error/failures.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> loginWithEmailPasswords({
    required String email,
    required String password,
  }) {
    // TODO: implement loginWithEmailPasswords
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPasswords({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final userId = await remoteDataSource.signupWithEmailPassword(
        email: email,
        name: name,
        password: password,
      );
      return Right(userId);
    } on ServerException catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
