import 'package:flutter/material.dart';
import 'package:uno/inicio_sesion_vendedor.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/inicioSesionCliente.png"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 80.0
          ),
          children: <Widget> [


            Row(
              children: <Widget> [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0)
                  ),
                  icon: const Icon(Icons.arrow_back),
                  tooltip: "Regresar",
                ),
              ],
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only( top: 5, bottom: 5, right: 5, left: 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                      child: const Stack(
                        children: <Widget>[

                          Text("  Inicia Sesión  ",
                            style: TextStyle(
                                fontSize: 33,
                                color: Color.fromRGBO(73, 80, 91, 1.0),
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    )
                  ],
                ),
                // Texto Informativo "Vendedor"
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      // FORMULARIO
                      child: const Stack(
                        children: <Widget>[
                          Text("CLIENTE",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    )
                  ],
                ),

                // Texto Informativo Detalles
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      // FORMULARIO
                      child: const Stack(
                        children: <Widget>[
                          Text("Accede y compra a todos tus proveedores favoritos de manera rápida y sencilla",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    )
                  ],
                ),

                // Espaciado entre elementos
                const SizedBox(
                  height: 5.0,
                ),

                // Campo de Usuario
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        width: 2
                        )
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontSize: 17
                    ),
                      decoration: const InputDecoration(
                          hintText: 'ejemplo@gmail.com',
                          labelText: 'Usuario',
                          prefixIcon: Icon(
                            Icons.attach_email_outlined,
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                          ),
                      ),
                  ),
                ),

                // Botón
                TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                      hintText: 'contraseña ',
                      labelText: 'Contraseña',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                  ),
                ),


                ElevatedButton(
                  onPressed:(){

                  },
                  child: const Text('Iniciar Sesión'),

                ),
                const SizedBox(
                  height:16.0,
                ),

                ElevatedButton(
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InicioSesionVendedor()));
                  },
                  child: const Text('Iniciar Sesión como vendedor'),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


