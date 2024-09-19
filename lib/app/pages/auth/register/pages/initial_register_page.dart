import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../core/components/auth_elevated_button.dart';
import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/constants/images_constants.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/default_text.dart';
import 'register_page.dart';

class InitialRegisterPage extends StatelessWidget {
  const InitialRegisterPage({super.key});

  static String get route => '/initial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Criar conta',
          style: DefaultTextApp(
            fontSize: 18,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              PhosphorIconsBold.arrowLeft,
            ), // icon: const Icon(
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(ImagesConstants.createAccount),
              ),
              const SizedBox(height: 22),
              const Text(
                'Falta pouco para explorar esse mundo!',
                textAlign: TextAlign.center,
                style: DefaultTextApp(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Como deseja se conectar?',
                style: DefaultTextApp(
                  fontSize: 16,
                  color: AppColors.grey600,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),
              AuthElevatedButton(
                imagePath: ImagesConstants.appleLogo,
                text: const Text(
                  'Continuar com a Apple',
                  style: DefaultTextApp(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey700,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              AuthElevatedButton(
                imagePath: ImagesConstants.googleLogo,
                text: const Text(
                  'Continuar com o Google',
                  style: DefaultTextApp(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey700,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              CustomElevatedButton(
                text: 'Continuar com um e-mail?',
                onPressed: () => context.go(RegisterPage.route),
              )
            ],
          ),
        ),
      ),
    );
  }
}
