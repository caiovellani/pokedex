import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/components/custom_elevated_button.dart';
import '../../core/constants/images_constants.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/default_text.dart';
import 'login_page.dart';
import 'register_page.dart';

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
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                const Text(
                  'Pular',
                  style: DefaultTextApp(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () => context.go(LoginPage.route),
                  icon: const Icon(
                    PhosphorIconsBold.arrowRight,
                  ),
                )
              ],
            ),
          )
        ],
      ),
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
                  color: AppColors.grey6,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                onPressed: () => context.go(RegisterPage.route),
                text: const Text(
                  'Criar conta',
                  style: DefaultTextApp(
                    fontSize: 18,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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