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
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registro Usuario'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  controller: usuario,
                  decoration: InputDecoration(
                      labelText: 'Nombre',
                      hintText: 'Digite nombres',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Apellidos',
                      hintText: 'Digite apellidos',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Dirección',
                      hintText: 'Digite su dirección completa',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Teléfono',
                      hintText: "0000-0000",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),

              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Correo electrónico',
                      hintText: 'Digite correo',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10,top: 50,right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Digite su contraseña',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              CheckboxListTile(
                value: _checkBox,
                title: Text("Acepto términos de política  y privacidad"),
                onChanged: (val) {
                  setState(() {
                    _checkBox = val!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
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
    );

  }


}



