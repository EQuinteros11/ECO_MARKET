import 'package:flutter/material.dart';
class ClienteOfertas extends StatefulWidget {
  const ClienteOfertas({super.key});

  @override
  State<ClienteOfertas> createState() => _ClienteOfertasState();
}

class _ClienteOfertasState extends State<ClienteOfertas> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ofertas para cliente"),
      ),
    );
  }
}
