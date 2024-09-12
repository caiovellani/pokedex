import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/default_text.dart';
import '../../models/onboarding_model.dart';
import '../auth/login_or_register.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static String get route => '/onboarding';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

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
                controller: _pageController,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentIndex = index;
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
                            color: AppColors.grey600,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 58,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              if (_currentIndex == contents.length - 1) {
                                context.go(LoginOrRegister.route);
                              } else {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Text(
                              style: const DefaultTextApp(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                              _currentIndex == contents.length - 1
                                  ? 'Continuar'
                                  : 'Vamos começar!',
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
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
      width: _currentIndex == index ? 28 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _currentIndex == index ? AppColors.blue : AppColors.lightBlue,
      ),
    );
  }
}
