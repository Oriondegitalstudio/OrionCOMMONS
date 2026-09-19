import 'package:dartz/dartz.dart';
import 'package:orion_commons/core/errors/failures.dart';
import 'package:orion_commons/features/auth/domain/entities/user_entity.dart';
import 'package:orion_commons/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) {
    return repository.login(email: email, password: password);
  }
}
