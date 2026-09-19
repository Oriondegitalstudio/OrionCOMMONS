import 'package:dartz/dartz.dart';
import 'package:orion_commons/core/errors/failures.dart';
import 'package:orion_commons/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:orion_commons/features/auth/domain/entities/user_entity.dart';
import 'package:orion_commons/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userModel = await remoteDataSource.login(
        email: email,
        password: password,
      );
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> logout() {
    throw UnimplementedError();
  }
}
