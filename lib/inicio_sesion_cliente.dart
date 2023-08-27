import 'package:flutter/material.dart';
import 'package:uno/inicio_sesion_vendedor.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20),
    ),
  ),
);
final ButtonStyle flatButtonStyle2 = TextButton.styleFrom(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20),
      ),
    ),
    backgroundColor: Colors.blueGrey
);


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
                SizedBox(
                  width:160.0,
                  height: 35.0,
                  child: Divider(
                    color: Colors.blueAccent[600],
                  ),
                ),
                TextField(
                    enableInteractiveSelection: false,
                    autofocus: true,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: 'NOMBRE-USUARIO',
                        labelText: 'usuario',
                        suffixIcon: Icon(
                            Icons.verified_user
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        )
                    ),
                    onSubmitted: (valor){
                      print('el nombre es'+valor.toString());
                    }
                ),
                Divider(
                  height: 18.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'contraseña ',
                      labelText: 'contraseña',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      )
                  ),
                ),
                Divider(
                  height: 15.0,
                ),
                ElevatedButton(
                  style: flatButtonStyle,
                  onPressed:(){

                  },
                  child: Text('Iniciar Sesión'),

                ),
                SizedBox(
                  height:16.0,
                ),
                ElevatedButton(
                  style: flatButtonStyle2,
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InicioSesionVendedor()));
                  },
                  child: Text('Iniciar Sesión como vendedor'),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


