part of 'route_import_path.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case RouteName.RegisterScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case RouteName.DocumentScreen:
        return MaterialPageRoute(builder: (_) => const DocumentScreen());
      case RouteName.scanIdScreen:
        return MaterialPageRoute(builder: (_) => const ScanIdCard());
      case RouteName.ScanIdInformation:
        return MaterialPageRoute(builder: (_) => const ScanIdInformation());
      case RouteName.ForgetEmailScreen:
        return MaterialPageRoute(builder: (_) => const ForgetEmailScreen());
      case RouteName.LoginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteName.ForgetNumberScreen:
        return MaterialPageRoute(builder: (_) => const ForgetNumberScreen());
      case RouteName.VerificationEmailScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationEmailScreen(),
        );
      case RouteName.VerificationNumberScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationNumberScreen(),
        );
      case RouteName.repasswordCreate:
        return MaterialPageRoute(builder: (_) => PasswordRecreate());
      case RouteName.passwordResetSuccessfully:
        return MaterialPageRoute(
          builder: (_) => const passwordResetSuccessfully(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
