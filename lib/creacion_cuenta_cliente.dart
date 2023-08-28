import 'package:flutter/material.dart';
import 'package:uno/inicio_sesion_cliente.dart';


// import 'package:stateful_app/form.dart';


class RegistroCliente extends StatefulWidget{
  @override
  RegistroApp createState() => RegistroApp();
}

class RegistroApp extends State<RegistroCliente> {
  TextEditingController usuario = TextEditingController();
  bool _checkBox = false;

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
                    color: Color.fromRGBO(255, 255, 255, 0.2),
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
                            fontSize: 20
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            hintText: 'Digite nombres',
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
                          decoration: const InputDecoration(
                              labelText: 'Apellidos',
                              hintText: 'Digite apellidos',
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
                          decoration: const InputDecoration(
                              labelText: 'Dirección',
                              hintText: 'Digite su dirección completa',
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
                      Padding(padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Teléfono',
                              hintText: "0000-0000",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),

                      Padding(padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Correo electrónico',
                              hintText: 'Digite correo',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              labelText: 'Contraseña',
                              hintText: 'Digite su contraseña',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              labelText: 'Confirmar Contraseña',
                              hintText: 'Digite su contraseña',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      CheckboxListTile(
                        value: _checkBox,
                        title: Text("Acepto términos de política y privacidad"),
                        onChanged: (val) {
                          setState(() {
                            _checkBox = val!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ]
                  ),
                ),
                Padding(padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppForm())
                      );
                    },
                    child: Text('Crear cuenta'),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }


}



