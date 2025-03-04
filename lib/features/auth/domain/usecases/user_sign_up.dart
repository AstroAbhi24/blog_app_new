import 'package:blog_app/core/Error/failures.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:blog_app/core/usecase/usecase.dart';

class UserSignUp implements Usecase<User, UserSignUpParams> {
  final AuthRepository authrepository;
  const UserSignUp(this.authrepository);

  @override
  Future<Either<Failure, User>> call(UserSignUpParams params) async {
    return await authrepository.signUpWithEmailPasswords(
      email: params.email,
      name: params.name,
      password: params.password,
    );
  }
}

class UserSignUpParams {
  final String email;
  final String name;
  final String password;

  UserSignUpParams({
    required this.email,
    required this.name,
    required this.password,
  });
}
