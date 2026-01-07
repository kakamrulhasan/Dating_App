import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/auth/view/Forget_email_screen%20copy.dart';
import 'package:flutter_application_2/features/auth/view/Forget_number_screen.dart';
import 'package:flutter_application_2/features/auth/view/login_screen.dart';
import 'package:flutter_application_2/features/auth/view/register_screen.dart';
import 'package:flutter_application_2/features/auth/view/verification_num_screen.dart';
import 'package:flutter_application_2/features/document_screen.dart';
import 'package:flutter_application_2/features/onBoarding/views/onboarding_view.dart';
import 'package:flutter_application_2/features/splash/splash_screen.dart';
import 'package:flutter_application_2/test.dart';

import 'features/auth/view/verification_email_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingView(),
        '/home': (context) => const Scaffold(),
        '/login': (context) => const LoginScreen(),
        '/test': (context) => const Test(),
        '/register': (context) => const RegisterScreen(),
        '/document': (context) => const DocumentScreen(),
        '/forgetemail': (context) => const ForgetEmailScreen(),
        '/forgetnum': (context) => const ForgetNumberScreen(),
        '/verifyemail': (context) => const VerificationEmailScreen(),
        '/verifysms': (context) => const VerificationNumberScreen(),
      },
    );
  }
}
