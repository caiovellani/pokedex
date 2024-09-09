import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(0, 0, 41, 100),
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
