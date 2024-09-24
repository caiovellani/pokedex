import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/default_text.dart';
import '../components/register_step_content.dart';
import '../enum/user_register_enum.dart';
import 'initial_register_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static String get route => '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final PageController scrollController = PageController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  String? emailError;
  String? passwordError;
  String? nameError;

  var currentStep = UserRegisterStep.email;

  void _nextStep() {
    setState(() {
      emailError = null;
      passwordError = null;
      nameError = null;

      if (currentStep == UserRegisterStep.email) {
        emailError = emailController.text.isEmpty ? 'Preencha o campo' : null;
      } else if (currentStep == UserRegisterStep.password) {
        passwordError =
            passwordController.text.isEmpty ? 'Preencha o campo' : null;
      } else if (currentStep == UserRegisterStep.name) {
        nameError = nameController.text.isEmpty ? 'Preencha o campo' : null;
      }

      if (emailError != null || passwordError != null || nameError != null) {
        return;
      }

      scrollController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      final currentIndex = scrollController.page?.toInt() ?? 0;
      setState(() {
        currentStep = UserRegisterStep.values[currentIndex];
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
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
              onPressed: () {
                if (currentStep != UserRegisterStep.email) {
                  scrollController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                  return;
                } else {
                  context.go(InitialRegisterPage.route);
                }
                context.pop();
              },
              icon:
                  const Icon(PhosphorIconsBold.arrowLeft), // icon: const Icon(
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                currentStep.index == 0
                    ? 'Vamos começar!'
                    : currentStep.index + 1 == UserRegisterStep.values.length
                        ? 'Pra finalizar'
                        : 'Agora...',
                style: const DefaultTextApp(
                  fontSize: 26,
                  color: AppColors.grey700,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                currentStep.title,
                style: const DefaultTextApp(
                  fontSize: 26,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: scrollController,
                  allowImplicitScrolling: false,
                  itemCount: UserRegisterStep.values.length,
                  itemBuilder: (context, index) {
                    final step = UserRegisterStep.values[index];
                    return switch (step) {
                      UserRegisterStep.email => RegisterStepContent(
                          error: emailError,
                          controller: emailController,
                          helperText: 'Use um endereço de e-mail válido.',
                          hintText: 'Email',
                          obscureText: false,
                          textInputType: TextInputType.emailAddress,
                        ),
                      UserRegisterStep.password => RegisterStepContent(
                          error: passwordError,
                          controller: passwordController,
                          helperText:
                              'Sua senha deve ter pelo menos 8 caracteres',
                          hintText: 'Senha',
                          obscureText: true,
                        ),
                      UserRegisterStep.name => RegisterStepContent(
                          error: nameError,
                          controller: nameController,
                          helperText:
                              'Esse será seu nome de usuário no aplicativo.',
                          hintText: 'Nome',
                          obscureText: false,
                        ),
                    };
                  },
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          CustomElevatedButton(
            text: 'Continuar',
            onPressed: _nextStep,
          ),
        ],
      ),
    );
  }
}
