import 'package:flutter/material.dart';

class VistaPrincipalCliente extends StatefulWidget {
  const VistaPrincipalCliente({super.key});

  @override
  State<VistaPrincipalCliente> createState() => _VistaPrincipalClienteState();
}

class _VistaPrincipalClienteState extends State<VistaPrincipalCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/img/vistaPrincipal.png"),
                  fit: BoxFit.cover
                ),

              ),
              child: Container(
                padding: const EdgeInsets.symmetric( vertical: 10, horizontal: 20 ),
                child: Column(
                  children: <Widget> [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only( top: 20),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.menu,
                                    color: Color.fromRGBO(65, 90, 119, 1.0),
                                    size: 45,
                                  ),
                                  tooltip: "Menú",
                              )
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget> [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                                color: const Color.fromRGBO(73, 80, 91, 1.0),
                                border: Border.all(
                                    color: const Color.fromRGBO(217, 217, 217, 1.0),
                                    width: 3
                                ),
                              ),
                              child: const Icon(
                                Icons.person,
                                size: 60,
                                color: Color.fromRGBO(217, 217, 217, 1.0),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("Bienvenido"),
                                Container(
                                  padding: const EdgeInsets.symmetric( vertical: 5, horizontal: 20),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Color.fromRGBO(255, 255, 255, 1.0),
                                  ),
                                  child: Text("Ivan") ,
                                )

                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),

            //Contenido Principal
            Container(
              alignment: Alignment.topLeft,
              child: const Column(
                children: <Widget> [
                  Text("data"),
                  Icon(
                    Icons.menu,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

