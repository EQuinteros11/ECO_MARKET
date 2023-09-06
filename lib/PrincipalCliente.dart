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
              height: 260,
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
                              margin: const EdgeInsets.only( top: 25),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.menu,
                                    color: Color.fromRGBO(65, 90, 119, 1.0),
                                    size: 40,
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
                                const Text("Bienvenido",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1.0),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric( vertical: 0, horizontal: 35),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Color.fromRGBO(255, 255, 255, 1.0),
                                  ),
                                  child: const Text("Iván",
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 23
                                    ),
                                  ) ,
                                )

                              ],
                            ),

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
              child: Column(
                children: <Widget> [
                  Container(
                   child: Column(
                     children: <Widget> [
                       const Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text("Mas opciones"),
                         ],
                       ),

                       const Row(
                         children: [
                           Text("Los mejores productos"),
                         ],
                       ),
                       Container(
                         child: const Text( "El mejor precio",
                           style: TextStyle(

                           ),
                         ),
                       )
                     ],
                   ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

