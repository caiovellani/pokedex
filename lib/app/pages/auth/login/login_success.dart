import 'package:flutter/material.dart';

import '../../../core/components/custom_elevated_button.dart';
import '../../../core/constants/images_constants.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  static String get route => '/login/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImagesConstants.loginSuccess),
              const Text(
                textAlign: TextAlign.center,
                'Bem-vindo de volta, Treinador!',
                style: DefaultTextApp(
                  fontSize: 26,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Esperamos que tenha tido uma longa jornada desde a última vez em que nos visitou.',
                textAlign: TextAlign.center,
                style: DefaultTextApp(
                  color: AppColors.grey600,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(
                text: 'Continuar',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
