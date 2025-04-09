import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? Key}) : super(key: Key);

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
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20), //caja invisible debajo de la imagen

          Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppStrings.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1,
                color: AppColors.primary,
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),

          const Spacer(),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.login);
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.complementary, width: 3),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              AppStrings.start,
              style: TextStyle(
                color: AppColors.background,
                fontSize: 35,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Spacer(),

          Text(
            AppStrings.register,
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
