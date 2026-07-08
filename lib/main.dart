import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tempmealapp/features/auth/login/login_screen.dart';
import 'package:tempmealapp/features/auth/signup/signup_screen.dart';
import 'package:tempmealapp/features/main_navigator/main_navigation.dart';
import 'package:tempmealapp/features/onboarding/onboarding_screen.dart';
import 'package:tempmealapp/features/splash/splash_screen.dart';
import 'package:tempmealapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
