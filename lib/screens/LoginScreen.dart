import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exe/components/navigation/Topbar.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/cubit/auth/auth_cubit.dart';
import 'package:flutter_exe/constants/index.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (!state.isLoading && state.errorMessage == null) {
            context.go('/main');
          }
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage!)),
            );
          }
        },
        child: DefaultLayout(
          child: Row(
            children: [
              _leftBackground(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 200.0),
                  child: BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return Form(
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
                              initialValue: state.email,
                              autoFocus: true,
                              prefixIcon: Icons.person_outline,
                              onChanged:
                                  context.read<AuthCubit>().onEmailChanged,
                            ),
                            const SizedBox(height: 16),
                            CustomTextFormField(
                              hintText: '비밀번호',
                              initialValue: state.password,
                              obscureText: !state.showPassword,
                              prefixIcon: Icons.lock_outline,
                              onChanged:
                                  context.read<AuthCubit>().onPasswordChanged,
                              suffixIcon: state.showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              onSuffixIconPressed: context
                                  .read<AuthCubit>()
                                  .togglePasswordVisibility,
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
                              child: _loginButton(state, context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
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

  Widget _loginButton(AuthState state, BuildContext context) {
    return ElevatedButton(
      onPressed: state.isLoading ? null : context.read<AuthCubit>().login,
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
