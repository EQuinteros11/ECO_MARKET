import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uno/inicio_sesion_cliente.dart';
import 'package:intl/intl.dart';


// import 'package:stateful_app/form.dart';


class RegistroCliente extends StatefulWidget{
  @override
  RegistroApp createState() => RegistroApp();
}

class RegistroApp extends State<RegistroCliente> {
  TextEditingController usuario = TextEditingController();
  bool _checkBox = false;
  var maskFormatterCelphone = MaskTextInputFormatter(
      mask: '####-####',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );


  Widget build(BuildContext context){

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/creacionCuentaCliente.png"),
              fit: BoxFit.cover
          )
      ),

      // Fondo de Pantalla
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/creacionCuentaCliente.png"),
                fit: BoxFit.cover
            )
        ),

        // Contenido
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
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

                          // Espacio entre elementos

                        ],
                      ),
                      // Banner de CREAR CUENTA
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

                      // Texto de creacion de cuenta
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            // FORMULARIO
                            child: const Stack(
                              children: <Widget>[
                                Text("Creación de Cuenta para cliente",
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
                    ],
                  ),
                ),

                // Contenedor de campos de formulario
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),

                  // Columna donde se almacenan todos los campos
                  child: Column(
                    children:<Widget> [

                      // Campo de Nombres
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border( bottom: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            width: 2
                          )
                          ),
                        ),
                        child: TextFormField(
                          controller: usuario,
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontSize: 17
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            hintText: 'Digite nombres',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de Apellidos
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border( bottom: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            width: 2
                          ) )
                        ),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Apellidos',
                            hintText: 'Digite apellidos',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de Direccion
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                width: 2
                            ) )
                        ),
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Dirección',
                            hintText: 'Digite su dirección completa',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de Telefono
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                width: 2
                            ) )
                        ),
                        child: TextFormField(
                          inputFormatters: [maskFormatterCelphone],
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Teléfono',
                            hintText: "0000-0000",
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de correo electronico
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                width: 2
                            ) )
                        ),
                        child: const TextField(
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          decoration: InputDecoration(
                            labelText: 'Correo electrónico',
                            hintText: 'Digite correo',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de contraseña
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                width: 2
                            ) )
                        ),
                        child: const TextField(
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            hintText: 'Digite su contraseña',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Campo de confirmar contraseña
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                width: 2
                            ) )
                        ),
                        child: const TextField(
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontSize: 17
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Confirmar Contraseña',
                            hintText: 'Digite su contraseña',
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                            ),
                          ),
                        ),
                      ),

                      // Checkbox de confirmación de politica de privacidad
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: CheckboxListTile(
                          value: _checkBox,
                          checkColor: const Color.fromRGBO(255, 255, 255, 1.0),
                          activeColor: const Color.fromRGBO(73, 80, 91, 1.0),
                          title: const Text("Acepto términos de política y privacidad",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                          ),),
                          onChanged: (val) {
                            setState(() {
                              _checkBox = val!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ]
                  ),
                ),

                // Espaciado entre elementos
                const SizedBox(
                  height: 15,
                ),

                Column(
                  children: <Widget> [
                    // Botón de Crear Cuenta
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyAppForm())
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only( top: 10, bottom: 10, left: 75, right: 75 ),
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                        child: const Text('Crear cuenta',
                          style: TextStyle(
                            color: Color.fromRGBO(73, 80, 91, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,),
                        ),
                      ),

                    // Espaciado entre elementos
                    const SizedBox(
                      height: 15,
                    ),

                    const Text("¿Ya posees una cuenta?",
                    style: TextStyle(
                      color: Color.fromRGBO(73, 80, 91, 1.0),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                    ),

                    // Espaciado entre elementos
                    const SizedBox(
                      height: 0,
                    ),

                    // Segundo Boton
                    FilledButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyAppForm()),
                        );
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only( top: 10, bottom: 10, left: 75, right: 75 ),
                          backgroundColor: const Color.fromRGBO(73, 80, 91, 1.0)
                      ),
                      child: const Text("Iniciar Sesión",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    // Espaciado Final
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }


}



