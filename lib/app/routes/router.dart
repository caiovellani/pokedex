import 'package:go_router/go_router.dart';

import '../pages/auth/forgot_password/forgot_password.dart';
import '../pages/auth/login/login_email_page.dart';
import '../pages/auth/login/login_page.dart';
import '../pages/auth/login/login_success.dart';
import '../pages/auth/login_or_register.dart';
import '../pages/auth/register/register_page.dart';
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
      GoRoute(
        path: ForgotPassword.route,
        builder: (context, state) => const ForgotPassword(),
      ),
      GoRoute(
        path: LoginSuccess.route,
        builder: (context, state) => const LoginSuccess(),
      ),
    ],
  );
}
