import 'package:flutter/material.dart';
import 'package:uno/Cliente/PrincipalCliente.dart';
import 'package:uno/creacion_cuenta_vendedor.dart';
import 'package:uno/seleccion_creacion_tipo_cuenta.dart';
import 'package:uno/vista_principal.dart';

import 'Cliente/inicio_sesion_cliente.dart';
import 'inicio_sesion_vendedor.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed( const Duration( seconds: 3 ) );
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ECO MARKET',
        initialRoute: "vistaPrincipal",
        routes: <String, WidgetBuilder>{
          "vistaPrincipal": (context) => VistaPrincipal(),
          "creacionTipoCuenta": (context) => Creacion_Cuenta(),
          "creacionCuentaCliente": (context) => Creacion_Cuenta(),
          "creacionCuentaVendedor": (context) => CreacionCuentaVendedor(),
          "inicioSesionVendedor": (context) => InicioSesionVendedor(),
          "InicioSesionCliente": (context) => MyAppForm(),
          "vistaPrincipalCliente": (context) => VistaPrincipalCliente(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(73, 80, 91, 1.0)),
          useMaterial3: true,
        ),
      );
  }

}