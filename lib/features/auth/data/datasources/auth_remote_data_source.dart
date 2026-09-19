import 'package:orion_commons/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    
    if (email == "test@example.com" && password == "password") {
      return const UserModel(
        id: "1",
        email: "test@example.com",
        name: "Test User",
      );
    } else {
      throw Exception("Invalid credentials");
    }
  }
}
