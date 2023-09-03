import 'package:flutter/material.dart';

class VistaPrincipalCliente extends StatefulWidget {
  const VistaPrincipalCliente({super.key});

  @override
  State<VistaPrincipalCliente> createState() => _VistaPrincipalClienteState();
}

class _VistaPrincipalClienteState extends State<VistaPrincipalCliente> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Bienvenido"),
      )
    );
  }
}

