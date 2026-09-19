import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orion_commons/features/auth/domain/usecases/login_use_case.dart';
import 'package:orion_commons/features/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;

  AuthCubit({required this.loginUseCase}) : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    
    final result = await loginUseCase(email: email, password: password);
    
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (user) => emit(AuthAuthenticated(user)),
    );
  }

  void logout() {
    emit(AuthUnauthenticated());
  }
}
