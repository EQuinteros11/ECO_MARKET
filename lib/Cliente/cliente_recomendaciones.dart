import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uno/Cliente/cliente_recomendaciones_detalle.dart';
import 'package:uno/services/firebase_services.dart';

import '../navbar.dart';

class ClienteRecomendacion extends StatefulWidget {
  const ClienteRecomendacion({super.key});

  @override
  State<ClienteRecomendacion> createState() => _ClienteRecomendacionState();
}

class _ClienteRecomendacionState extends State<ClienteRecomendacion> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(157, 160, 166, 1.0),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 5 ),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/listadoTiendasCliente.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        borderRadius: BorderRadius.all( Radius.circular( 50 ) )
                      ),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0)
                        ),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                        tooltip: "Regresar",
                      ),
                    ),
                    const Text("Recomendaciones",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontWeight: FontWeight.w700,
                        fontSize: 22
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                child: listadoTiendas(),
              ),
            ],
          ),
        ),
      )
    );
  }
}

Widget listadoTiendas() {
  return Container(
    child: FutureBuilder(
        future: getTiendas(),
        builder: (( context, snapshot ) {
          if ( snapshot.hasData ){
            return GridView.builder(
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
                crossAxisCount: 1,
                childAspectRatio: ( 3.0 ),
                crossAxisSpacing: 15,
                mainAxisSpacing: 5,
              ),
              itemCount: snapshot.data?.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: ( context, index ){

                return InkWell(
                  onTap: (){
                    print("Funciona >)");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ClienteRecomendacionDetalle() ));
                  },
                  child: Card(
                    clipBehavior: Clip.none,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.network( snapshot.data?[index]['img'],
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 10 ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text( snapshot.data?[index]['nombre'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text( snapshot.data?[index]['direccion'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 14
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon( Icons.phone,
                                          size: 18,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text( snapshot.data?[index]['telefono'],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                          ),
                                        ),
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        })
    ),
  );
}
