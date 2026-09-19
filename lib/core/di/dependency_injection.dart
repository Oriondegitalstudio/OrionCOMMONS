import 'package:get_it/get_it.dart';
import 'package:orion_commons/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:orion_commons/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:orion_commons/features/auth/domain/repositories/auth_repository.dart';
import 'package:orion_commons/features/auth/domain/usecases/login_use_case.dart';
import 'package:orion_commons/features/auth/presentation/cubit/auth_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Auth
  
  // Cubits
  sl.registerFactory(() => AuthCubit(loginUseCase: sl()));

  // Use Cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  // Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
}
