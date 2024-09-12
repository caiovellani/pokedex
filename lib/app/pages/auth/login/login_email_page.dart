import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';
import 'login_page.dart';

class LoginEmailPage extends StatefulWidget {
  const LoginEmailPage({super.key});

  static String get route => '/login/email';

  @override
  State<LoginEmailPage> createState() => _LoginEmailPageState();
}

class _LoginEmailPageState extends State<LoginEmailPage> {
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
      body: const Center(
        child: Text(
          'Entrar com seu Email',
          style: DefaultTextApp(fontSize: 50),
        ),
      ),
    );
  }
}
