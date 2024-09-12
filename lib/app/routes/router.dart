import 'package:go_router/go_router.dart';

import '../pages/auth/login_email_page.dart';
import '../pages/auth/login_or_register.dart';
import '../pages/auth/login_page.dart';
import '../pages/auth/register_page.dart';
import '../pages/onboarding/onboarding_page.dart';
import '../pages/splash_screen/splash_screen_page.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: SplashScreenPage.route,
    routes: [
      GoRoute(
        path: SplashScreenPage.route,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: OnboardingPage.route,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: LoginOrRegister.route,
        builder: (context, state) => const LoginOrRegister(),
      ),
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RegisterPage.route,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: LoginEmailPage.route,
        builder: (context, state) => const LoginEmailPage(),
      ),
    ],
  );
}
