import 'package:flutter/material.dart';
class ClienteRecomendacion extends StatefulWidget {
  const ClienteRecomendacion({super.key});

  @override
  State<ClienteRecomendacion> createState() => _ClienteRecomendacionState();
}

class _ClienteRecomendacionState extends State<ClienteRecomendacion> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Recomendaciones para cliente"),
      ),
    );
  }
}
