import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class SplashScreen extends StatefulWidget {
  //Llave de seguridad
  const SplashScreen({Key? Key}) : super(key: Key);

  //estado para controllar el tiempo de duracion del splash
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //Espera a que pasen 2 segundos para redirigir a la vista home
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  // vista splash
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background, // color de fondo de la vista
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // alineacion horizontal
        children: [
          const Spacer(), //espacio simetrico en toda la pantalla
          //Logo de la aplicacion
          Image.asset(
            'assets/icons/logo_movil.png',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20), //caja invisible debajo de la imagen
          //texto nombre de la aplicacion
          Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(), //espacio simetrico
          //alinea en este caso a la derecha todos los elementos que contenga
          Align(
            alignment: Alignment.centerRight, // alineacion a la derecha
            //Da un borede interno a todos los elementos que contenga
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ), // borede interno a la derecha
              //texto con el nombre del estudiante
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
          const SizedBox(height: 20), //caja invisible debajo de la imagen
        ],
      ),
    );
  }
}
