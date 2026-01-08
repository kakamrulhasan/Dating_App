import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/route/route_import_path.dart';
import 'package:flutter_application_2/core/route/route_name.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute:AppRouter.generateRoute,
      initialRoute: RouteName.splashScreen,



      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/onboarding': (context) => const OnboardingView(),
      //   '/home': (context) => const Scaffold(),
      //   '/login': (context) => const LoginScreen(),
      //   '/test': (context) => const Test(),
      //   '/register': (context) => const RegisterScreen(),
      //   '/document': (context) => const DocumentScreen(),
      //   '/scanId': (context)=> const ScanIdCard(),
      //   '/scanIdInfo':(context)=> const ScanIdInformation(),

      //   //login part
      //   '/forgetemail': (context) => const ForgetEmailScreen(),
      //   '/forgetnum': (context) => const ForgetNumberScreen(),
      //   '/verifyemail': (context) => const VerificationEmailScreen(),
      //   '/verifysms': (context) => const VerificationNumberScreen(),
      //   '/repasscreate': (context) => const PasswordRecreate(),
      //   '/passwordscuccess': (context)=> const passwordResetSuccessfully(),
        

      // },
    );
  }
}
