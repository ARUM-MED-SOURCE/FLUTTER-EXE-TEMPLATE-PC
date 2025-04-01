import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_exe/repositories/user_repository.dart';
import 'package:flutter_exe/model/login_response.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';

part 'auth.freezed.dart';
part 'auth.g.dart';

final logger = Logger();

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String userId,
    @Default('') String userPassword,
    @Default(false) bool isLoading,
    @Default(false) bool showPassword,
    String? errorMessage,
  }) = _AuthState;
}

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState();
  }

  void onUserIdChanged(String value) {
    state = state.copyWith(
      userId: value,
      errorMessage: null,
    );
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(
      userPassword: value,
      errorMessage: null,
    );
  }

  void togglePasswordVisibility() {
    state = state.copyWith(showPassword: !state.showPassword);
  }

  Future<void> login() async {
    if (state.userId.isEmpty || state.userPassword.isEmpty) {
      state = state.copyWith(
        errorMessage: '아이디와 비밀번호를 모두 입력해주세요.',
      );
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final data = {
        'userId': state.userId,
        'userPassword': state.userPassword,
      };

      final response = await ref.read(userRepositoryProvider).login(
        'Login',
        json.encode(data),
        state.userId,
        'AND',
        'Chrome',
        '172.17.200.48',
        'E0AA96DEBD0A',
      );

      state = state.copyWith(isLoading: false);
      // Navigation will be handled by the UI layer using ref.listen
    } catch (e) {
      logger.e('Login error: $e');
      state = state.copyWith(
        isLoading: false,
        errorMessage: '로그인에 실패했습니다. 다시 시도해주세요.',
      );
    }
  }
} 