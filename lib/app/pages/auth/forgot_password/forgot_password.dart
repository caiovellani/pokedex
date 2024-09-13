import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/components/custom_text_field.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';
import '../login/login_email_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static String get route => '/forgot_password';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final TextEditingController emailController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Esqueci minha senha',
          style: DefaultTextApp(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => context.go(LoginEmailPage.route),
            icon: const Icon(PhosphorIconsBold.caretLeft), // icon: const Icon(
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Vamos recuperar!',
                style: DefaultTextApp(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey600,
                ),
              ),
              const Text(
                'Qual é o seu e-mail?',
                style: DefaultTextApp(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: emailController,
                hintText: 'E-mail',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 8),
              const Text(
                textAlign: TextAlign.center,
                'Vamos enviar um código de verificação para o seu e-mail',
                style: DefaultTextApp(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
