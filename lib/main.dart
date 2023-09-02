import 'package:flutter/material.dart';
import 'package:uno/creacion_cuenta_vendedor.dart';
import 'package:uno/seleccion_creacion_tipo_cuenta.dart';
import 'package:uno/vista_principal.dart';

import 'inicio_sesion_cliente.dart';
import 'inicio_sesion_vendedor.dart';

void main() => runApp(MyApp());

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
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      );
  }

}





