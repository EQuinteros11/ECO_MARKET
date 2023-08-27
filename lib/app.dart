import 'package:flutter/material.dart';

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
              vertical: 90.0
          ),
          children: <Widget> [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                    style: TextStyle(fontFamily: 'cursive', fontSize: 50.0 ,)
                ),
                Text('CLIENTE',
                    style: TextStyle(fontFamily: 'Ubuntu')
                ),
                Text('Accede y compra a todos tus\nproveedores favoritos de manera\nrápida y sencilla'
                ),
                SizedBox(
                  width:160.0,
                  height: 15.0,
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


