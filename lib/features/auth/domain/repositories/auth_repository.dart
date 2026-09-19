import 'package:dartz/dartz.dart';
import 'package:orion_commons/core/exeptions/failures.dart';
import 'package:orion_commons/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> logout();
  
  Future<Either<Failure, UserEntity>> getCurrentUser();
}
