import 'package:flutter/material.dart';
import 'package:uno/inicio_sesion_vendedor.dart';

class CreacionCuentaVendedor extends StatefulWidget {
  const CreacionCuentaVendedor({super.key});

  @override
  State<CreacionCuentaVendedor> createState() => _CreacionCuentaVendedorState();
}

class _CreacionCuentaVendedorState extends State<CreacionCuentaVendedor> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/creacionCuentaVendedor.png"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.only(top: 50 ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget> [
                    // Boton de Regresar
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

                    // Espacio entre elementos

                  ],
                ),

                // Banner de Crea tu cuenta
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                      child: const Stack(
                        children: <Widget>[

                          Text("Crea tu Cuenta",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromRGBO(73, 80, 91, 1.0),
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    )
                  ],
                ),

                // Banner informativo
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      // FORMULARIO
                      child: const Stack(
                        children: <Widget>[
                          Text("Creación de Cuenta para vendedor",
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

                SizedBox(height: 15),

                // Stepper de creacion de cuenta
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stepper(
                        currentStep: _index,
                        onStepCancel: () {
                          if (_index > 0) {
                            setState(() {
                              _index -= 1;
                            });
                          }
                        },
                        onStepContinue: () {
                          if (_index <= 0) {
                            setState(() {
                              _index += 1;
                            });
                          }
                        },
                        onStepTapped: (int index) {
                          setState(() {
                            _index = index;
                          });
                        },
                        steps: <Step>[
                          Step(
                            title: const Text('Detalles del negocio',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ) ,),
                            content: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: <Widget>[
                                  const Text('Complete los detalles',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1.0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  textAlign: TextAlign.start,),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Nombre del negocio",
                                        hintText: "Nombre",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Dirección",
                                        hintText: "Ejemplo",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),

                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Rubro",
                                        hintText: "Ejemplo",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          // Paso 2
                          Step(
                            title: const Text('Datos Personales',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),),
                            content: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: <Widget>[
                                  const Text('Complete los detalles',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1.0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.start,
                                  ),

                                  // Primer Paso de la segunda Opcion
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Nombre del Propietario",
                                        hintText: "Nombre",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),
                                  ),

                                  // Segundo Paso de la segunda Opcion
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Número de Contacto",
                                        hintText: "0000-0000",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),
                                  ),

                                  // Tercer Paso de la segunda Opcion
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Correo",
                                        hintText: "ejemplo@gmail.com",
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                        ),
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),

                // Espaciado entre elementos
                SizedBox(height: 20),

                Column(
                  children: [
                    FilledButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const InicioSesionVendedor()));
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only( top: 10, bottom: 10, left: 65, right: 65 ),
                        backgroundColor: Color.fromRGBO(255, 255, 2555, 1.0),
                      ),
                      child: const Text("Crear Cuenta",
                        style: TextStyle(
                            color: Color.fromRGBO(65, 90, 119, 1.0),
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                    )
                  ],
                ),


                // Espaciado entre elementos
                SizedBox(height: 20),

                // Boton Iniciar Sesion
                Column(
                  children: [
                    const Text("¿Ya posees una cuenta?",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),),
                    FilledButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InicioSesionVendedor() )
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only( top: 10, bottom: 10, left: 65, right: 65 ),
                        backgroundColor: const Color.fromRGBO(65, 90, 119, 1.0),
                      ),
                      child: const Text("Iniciar Sesión",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                    )
                  ],
                ),

                //Espaciado final
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
