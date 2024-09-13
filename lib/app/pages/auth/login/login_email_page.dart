import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/components/custom_elevated_button.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';
import '../forgot_password/forgot_password.dart';
import 'login_page.dart';
import 'login_success.dart';

class LoginEmailPage extends StatefulWidget {
  const LoginEmailPage({super.key});

  static String get route => '/login/email';

  @override
  State<LoginEmailPage> createState() => _LoginEmailPageState();
}

class _LoginEmailPageState extends State<LoginEmailPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> _isFormValid = ValueNotifier<bool>(false);
  bool _isObscured = true;

  void _validateForm() {
    final emailFilled = emailController.text.isNotEmpty;
    final passwordFilled = passwordController.text.isNotEmpty;
    _isFormValid.value = emailFilled && passwordFilled;
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.removeListener(_validateForm);
    passwordController.removeListener(_validateForm);
    _isFormValid.dispose();
  }

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entrar',
          style: DefaultTextApp(
            fontSize: 18,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => context.go(LoginPage.route),
            icon: const Icon(PhosphorIconsBold.arrowLeft), // icon: const Icon(
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Bem vindo de volta!',
                        style: DefaultTextApp(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey700,
                        ),
                      ),
                      const Text(
                        'Preencha os dados',
                        style: DefaultTextApp(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 54),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'E-mail',
                            style: DefaultTextApp(
                              fontSize: 16,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextField(
                            hintText: 'E-mail',
                            obscureText: false,
                            controller: emailController,
                            textInputType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Senha',
                            style: DefaultTextApp(
                              fontSize: 16,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextField(
                            controller: passwordController,
                            obscureText: _isObscured,
                            hintText: 'Senha',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured
                                    ? PhosphorIcons.eyeSlash()
                                    : PhosphorIcons.eye(),
                              ),
                              onPressed: _toggleVisibility,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      TextButton(
                        onPressed: () => context.go(ForgotPassword.route),
                        child: const Text(
                          'Esqueceu sua senha?',
                          style: DefaultTextApp(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _isFormValid,
                builder: (context, isFormValid, child) {
                  return CustomElevatedButton(
                    color: isFormValid ? AppColors.blue : AppColors.grey400,
                    text: const Text(
                      'Entrar',
                      style: DefaultTextApp(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: isFormValid
                        ? () => context.go(LoginSuccess.route)
                        : null,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
