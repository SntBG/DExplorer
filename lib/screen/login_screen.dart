import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? Key}) : super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // alineacion horizontal
        children: [
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              Image.asset(
                'assets/icons/logo_movil.png',
                width: 90,
                height: 90,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Text(
                AppStrings.appName,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),

          const Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              AppStrings.msgLogin,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const Spacer(),
          Row(
            children: [
              SizedBox(width: 20),
              Image.asset(
                'assets/icons/user.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primary,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.complementary,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.complementary,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),

          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Image.asset(
                'assets/icons/key.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primary,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.complementary,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.complementary,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),

          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.home);
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
              AppStrings.login,
              style: TextStyle(
                color: AppColors.background,
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppStrings.password,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 22,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.home);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.complementary, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/google.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 20),
                    Text(
                      AppStrings.google,
                      style: TextStyle(
                        color: AppColors.background,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              const Spacer(),
              Text(
                AppStrings.account,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(width: 5),
              Text(
                AppStrings.register,
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Spacer(),
            ],
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
