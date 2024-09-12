import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/components/auth_elevated_button.dart';
import '../../../core/components/custom_elevated_button.dart';
import '../../../core/constants/images_constants.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';
import '../login_or_register.dart';
import 'login_email_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String get route => '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            onPressed: () => context.go(LoginOrRegister.route),
            icon: const Icon(PhosphorIconsBold.arrowLeft), // icon: const Icon(
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
                child: Image.asset(ImagesConstants.loginPage),
              ),
              const SizedBox(height: 22),
              const Text(
                'Que bom te ver aqui novamente!',
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
              // AuthElevatedButton(
              //   icon: Icon(PhosphorIcons.appleLogo()),
              //   onPressed: () {},
              //   child: const Text('Continuar com a Apple'),
              // ),
              const SizedBox(height: 12),
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
                text: const Text(
                  'Continuar com um e-mail',
                  style: DefaultTextApp(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                onPressed: () => context.go(LoginEmailPage.route),
              )
            ],
          ),
        ),
      ),
    );
  }
}
