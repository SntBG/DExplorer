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
      //Desactiva la etiqueta de debug
      debugShowCheckedModeBanner: false,
      //Define el nombre de la app que se establecio en la clase strings
      title: AppStrings.appName,
      //Definicion de la ruta inicial
      initialRoute: Routes.splash,
      //Definicion de todas las rutas con sus respectivas clases
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
      },
    );
  }
}
