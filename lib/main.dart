import 'package:d_explorer/core/string.dart';
import 'package:d_explorer/core/routes.dart';
import 'package:d_explorer/screen/home_screen.dart';
import 'package:d_explorer/screen/splash_screen.dart';
import 'package:d_explorer/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
      },
    );
  }
}
