import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce shoping',
      theme: ThemeData(
        primaryColor: const Color(
          0xFFEF6969,
        ),
      ),
      home: OnboardingScreen(), //SplashScreen(),
      // this project its not copmleted.
    );
  }
}
