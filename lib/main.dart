import 'package:flutter/material.dart';
import 'package:tempmealapp/features/auth/login/login_screen.dart';
import 'package:tempmealapp/features/auth/signup/signup_screen.dart';
import 'package:tempmealapp/features/main_navigator/main_navigation.dart';
import 'package:tempmealapp/features/onboarding/onboarding_screen.dart';
import 'package:tempmealapp/features/splash/splash_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => MainNavigation(),
      },
    );
  }
}
