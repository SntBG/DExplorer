import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? Key}) : super(key: Key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // alineacion horizontal
        children: [
          const Spacer(),
          Image.asset(
            'assets/icons/logo_movil.png',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20), //caja invisible debajo de la imagen

          Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(), //caja invisible debajo de la imagen

          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                AppStrings.name,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
