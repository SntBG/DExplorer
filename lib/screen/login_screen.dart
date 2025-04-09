import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class LoginScreen extends StatelessWidget {
  //Llave de seguridad
  const LoginScreen({Key? Key}) : super(key: Key);

  // vista login
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //estructura de la vista
      backgroundColor: AppColors.background, //color de fondo
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // alineacion horizontal
        children: [
          const Spacer(), //espacio simetrico
          Row(
            //organiza los elementos internos de forma horizontal
            children: [
              const Spacer(), //espacio simetrico
              Image.asset(
                //imagen del logo
                'assets/icons/logo_movil.png',
                width: 90,
                height: 90,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20), //espacio visual de tamaño establecido
              Text(
                //texto nombre de la aplicacion
                AppStrings.appName,
                //estilo del texto
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(), //espacio simetrico
            ],
          ),

          const Spacer(), //espacio simetrico
          //borde interno a los elementos que contenga
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ), //borde interno horizontal
            child: Text(
              //texto mensaje del login
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

          const Spacer(), //espacio simetrico
          Row(
            // ordena los elementos internos de forma horizontal
            children: [
              SizedBox(width: 20),
              Image.asset(
                //imagen del usuario
                'assets/icons/user.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20), //espacio visual de tamaño definido
              Expanded(
                // expande los elementos internos al espacio disponible en la vista
                child: TextField(
                  //campo para ingresar texto
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
              SizedBox(width: 20), //espacio visual de tamaño definido
            ],
          ),

          SizedBox(height: 20), //espacio visual de tamaño definido
          Row(
            // ordena los elementos internos de forma horizontal
            children: [
              SizedBox(width: 20), //espacio visual de tamaño definido
              Image.asset(
                //imagen de la llave
                'assets/icons/key.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20), //espacio visual de tamaño definido
              Expanded(
                // expande los elementos internos al espacio disponible en la vista
                child: TextField(
                  // campo para ingresar texto
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
              SizedBox(width: 20), //espacio visual de tamaño definido
            ],
          ),

          const Spacer(),

          ElevatedButton(
            //boton de ingresar
            onPressed: () {
              // ruta de redireccion al ser pulsado
              Navigator.of(context).pushReplacementNamed(Routes.home);
            },
            //estilos del boton
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.complementary, width: 3),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              //texto del boton
              AppStrings.login,
              style: TextStyle(
                color: AppColors.background,
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 10), //espacio visual de tamaño definido
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
            ), //borde interior horizontal
            child: Text(
              //texto de reestablecer contraseña
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

          const Spacer(), //espacio simetrico
          Row(
            // ordena los elementos internos de forma horizontal
            mainAxisAlignment:
                //espaciado al rededor de los elementos internos
                MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                //boton de google
                onPressed: () {
                  //redirecccion
                  Navigator.of(context).pushReplacementNamed(Routes.home);
                },
                // estilos del boton
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
                      // logo de google
                      'assets/icons/google.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 20), //espacio visual de tamaño definido
                    Text(
                      //texto del boton
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

          SizedBox(height: 10), //espacio visual de tamaño definido
          Row(
            // ordena los elementos internos de forma horizontal
            children: [
              const Spacer(), // espacio simetrico
              Text(
                AppStrings.account,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(width: 5), //espacio visual de tamaño definido
              Text(
                // texto de registrate
                AppStrings.register,
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Spacer(), // espacio simetrico
            ],
          ),

          const Spacer(), // espacio simetrico
        ],
      ),
    );
  }
}
