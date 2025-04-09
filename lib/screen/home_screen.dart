import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  //Llave de seguridad
  const HomeScreen({Key? Key}) : super(key: Key);

  //Vista home
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color de fondo de la vista
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // alineacion horizontal
        children: [
          const Spacer(), //espacio simetrico en toda la pantalla
          //Logo de la aplicacion
          Image.asset(
            'assets/icons/logo_movil.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20), //caja invisible debajo de la imagen
          //Nombre de la aplicacion
          Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(), //espacio simetrico en toda la pantalla
          //pading aplicacdo solo a los elementos de su interior
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ), // borde interno en ambos lados dde manera horizontal
            //texto de la descripcion de la app
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

          const Spacer(), //espacio simetrico en toda la pantalla
          //Boton de redireccion a la vista login
          ElevatedButton(
            onPressed: () {
              //redirege al login al se presionado
              Navigator.of(context).pushReplacementNamed(Routes.login);
            },
            //Estilos del boton
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.complementary, width: 3),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            //texto del boton
            child: Text(
              AppStrings.start,
              style: TextStyle(
                color: AppColors.background,
                fontSize: 35,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const Spacer(), //espacio simetrico en toda la pantalla
          //Texto de registrate
          Text(
            AppStrings.register,
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),

          const Spacer(), //espacio simetrico en toda la pantalla
        ],
      ),
    );
  }
}
