import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/default_text.dart';
import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static String get route => '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          'Registre-se',
          style: DefaultTextApp(fontSize: 50),
        ),
      ),
    );
  }
}
