import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/default_text.dart';
import '../../models/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          contents[i].image,
                        ),
                        const SizedBox(height: 40),
                        Text(
                          textAlign: TextAlign.center,
                          contents[i].title,
                          style: const DefaultTextApp(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: const DefaultTextApp(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.grey6,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 28 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? AppColors.blue : AppColors.lightBlue,
      ),
    );
  }
}
