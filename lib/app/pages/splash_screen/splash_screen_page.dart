import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/app_colors.dart';
import '../onboarding/onboarding_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  static String get route => '/splashscreen';

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.go(OnboardingPage.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.splashBackground,
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Poké',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Pokemon',
                  color: Colors.white,
                ),
              ),
              Text(
                'dex',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Pokemon',
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
