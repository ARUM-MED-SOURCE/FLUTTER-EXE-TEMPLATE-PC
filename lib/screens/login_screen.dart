import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/constants/index.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
    final screenSize = MediaQuery.of(context).size;

    ref.listen(authNotifierProvider, (previous, next) {
      if (previous?.isLoading == false && next.isLoading) {
        // Show loading indicator
      }
      if (previous?.isLoading == true && !next.isLoading) {
        // Hide loading indicator
        if (next.errorMessage == null) {
          // Navigate to main screen on success
          context.go('/main');
        }
      }
    });

    return DefaultLayout(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 1024;
          final leftWidth = isSmallScreen ? 0.0 : constraints.maxWidth * 0.4;
          final formWidth =
              isSmallScreen ? constraints.maxWidth : constraints.maxWidth * 0.6;

          return Row(
            children: [
              if (!isSmallScreen)
                Container(
                  width: leftWidth,
                  height: constraints.maxHeight,
                  clipBehavior: Clip.none,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.loginLeftBackground),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              SizedBox(
                width: formWidth,
                child: Center(
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 480,
                        minHeight: isSmallScreen ? constraints.maxHeight : 0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isSmallScreen ? 32.0 : 64.0,
                          vertical: isSmallScreen ? 32.0 : 0.0,
                        ),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.5,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    _loginLogo(isSmallScreen),
                                    _loginClipEformText(isSmallScreen),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 32),
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
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _loginLogo(bool isSmallScreen) {
    final size = isSmallScreen ? 80.0 : 100.0;
    return Positioned(
      top: 0,
      child: Image.asset(
        AppImages.loginTabletIcon,
        width: size,
        height: size,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _loginClipEformText(bool isSmallScreen) {
    final size = isSmallScreen ? 160.0 : 200.0;
    return Positioned(
      top: isSmallScreen ? 10 : 20,
      child: Image.asset(
        AppImages.loginClipEformText,
        width: size,
        height: size,
        fit: BoxFit.contain,
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
