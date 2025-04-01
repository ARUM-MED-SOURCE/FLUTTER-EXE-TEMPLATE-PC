import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/components/navigation/Topbar.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/constants/index.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_exe/screens/main_screen.dart';

import '../auth/auth.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController _userIdController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _userIdController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _userIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);

    ref.listen(authNotifierProvider, (previous, next) {
      if (previous?.isLoading == false && next.isLoading) {
        // Show loading indicator
      }
      if (previous?.isLoading == true && !next.isLoading) {
        // Hide loading indicator
        if (next.errorMessage == null) {
          // Navigate to main screen on success
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const MainScreen()),
          );
        }
      }
    });

    return DefaultLayout(
      child: Row(
        children: [
          _leftBackground(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 160,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          _loginLogo(),
                          _loginClipEformText(),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      hintText: '아이디',
                      initialValue: state.userId,
                      autoFocus: true,
                      prefixIcon: Icons.person_outline,
                      onChanged: (value) => ref
                          .read(authNotifierProvider.notifier)
                          .onUserIdChanged(value),
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      hintText: '비밀번호',
                      initialValue: state.userPassword,
                      obscureText: !state.showPassword,
                      prefixIcon: Icons.lock_outline,
                      suffixIcon: state.showPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onSuffixIconPressed: () => ref
                          .read(authNotifierProvider.notifier)
                          .togglePasswordVisibility(),
                      onChanged: (value) => ref
                          .read(authNotifierProvider.notifier)
                          .onPasswordChanged(value),
                    ),
                    if (state.errorMessage != null) ...[
                      const SizedBox(height: 16),
                      Text(
                        state.errorMessage!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ],
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: _loginButton(state),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _leftBackground() {
    return Image.asset(
      AppImages.loginLeftBackground,
      fit: BoxFit.cover,
    );
  }

  Widget _loginLogo() {
    return Positioned(
      top: 0,
      child: Image.asset(
        AppImages.loginTabletIcon,
        width: 100,
        height: 100,
      ),
    );
  }

  Widget _loginClipEformText() {
    return Positioned(
      top: 20,
      child: Image.asset(
        AppImages.loginClipEformText,
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _loginButton(AuthState state) {
    return ElevatedButton(
      onPressed: state.isLoading
          ? null
          : () => ref.read(authNotifierProvider.notifier).login(),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: state.isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ),
            )
          : const Text(
              '로그인',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
    );
  }
}
