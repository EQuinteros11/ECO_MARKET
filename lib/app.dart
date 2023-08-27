import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
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
              TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    hintText: 'USER NAME'

                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
