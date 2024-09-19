import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/components/custom_elevated_button.dart';
import '../../core/constants/images_constants.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/default_text.dart';
import 'login/login_page.dart';
import 'register/pages/initial_register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  static String get route => '/login_or_register';

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImagesConstants.loginOrRegister,
              ),
              const SizedBox(height: 40),
              const Text(
                textAlign: TextAlign.center,
                'Está pronto para essa aventuda?',
                style: DefaultTextApp(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                textAlign: TextAlign.center,
                'Basta criar uma conta e começar a explorar o mundo dos Pokémons hoje!',
                style: DefaultTextApp(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                onPressed: () => context.push(InitialRegisterPage.route),
                text: 'Criar conta',
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => context.go(LoginPage.route),
                child: const Text(
                  'Ja tenho uma conta',
                  style: DefaultTextApp(
                    fontSize: 18,
                    color: AppColors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
