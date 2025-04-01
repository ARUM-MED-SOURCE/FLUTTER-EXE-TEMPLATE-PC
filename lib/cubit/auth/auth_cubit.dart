import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
    @Default(false) bool showPassword,
    String? errorMessage,
  }) = _AuthState;
}

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState());

  void onEmailChanged(String value) {
    emit(state.copyWith(
      email: value,
      errorMessage: null,
    ));
  }

  void onPasswordChanged(String value) {
    emit(state.copyWith(
      password: value,
      errorMessage: null,
    ));
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future<void> login() async {
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(
        errorMessage: '이메일과 비밀번호를 모두 입력해주세요.',
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));

    try {
      // TODO: Implement your login API call here
      await Future.delayed(const Duration(seconds: 1)); // Simulated API call
      
      // Simulate successful login
      emit(state.copyWith(isLoading: false));
      
      // TODO: Navigate to home screen or handle successful login
      
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: '로그인에 실패했습니다. 다시 시도해주세요.',
      ));
    }
  }
} 