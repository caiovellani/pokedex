import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  static String get route => '/splashscreen';

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
