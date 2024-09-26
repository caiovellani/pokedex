import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/constants/images_constants.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/default_text.dart';
import '../../../home/home_page.dart';

class RegisterPageSuccess extends StatelessWidget {
  const RegisterPageSuccess({super.key});

  static String get route => '/register/success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImagesConstants.successRegister,
              ),
              const SizedBox(height: 52),
              const Text(
                'Sua conta foi criada com Sucesso!',
                textAlign: TextAlign.center,
                style: DefaultTextApp(
                  fontSize: 26,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Seja bem-vindo, treinador! Estamos animados para acompanhar a sua jornada.',
                textAlign: TextAlign.center,
                style: DefaultTextApp(
                  fontSize: 18,
                  color: AppColors.grey600,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                text: 'Continuar',
                onPressed: () => context.go(HomePage.route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
