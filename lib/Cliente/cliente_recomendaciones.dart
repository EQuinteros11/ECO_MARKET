import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uno/services/firebase_services.dart';

class ClienteRecomendacion extends StatefulWidget {
  const ClienteRecomendacion({super.key});

  @override
  State<ClienteRecomendacion> createState() => _ClienteRecomendacionState();
}

class _ClienteRecomendacionState extends State<ClienteRecomendacion> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ejemplo()
    );
  }
}

class Prueba extends StatefulWidget {
  const Prueba({super.key});

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


Widget Ejemplo() {
  return Scaffold(
    body: FutureBuilder(
        future: getTiendas(),
        builder: (( context, snapshot ) {
          return GridView.builder(
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
              crossAxisCount: 1,
              childAspectRatio: ( 3.0 ),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: snapshot.data?.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: ( context, index ){

              return Card(
                clipBehavior: Clip.none,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/logoSplash.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric( horizontal: 15 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( snapshot.data?[index]['nombre'] ),
                                Text( snapshot.data?[index]['direccion'], maxLines: 2, overflow: TextOverflow.ellipsis ),
                                Text( snapshot.data?[index]['telefono'] )

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );




            }
          );
        })
    ),
  );
}

Widget itemTienda( String nombreTienda, BuildContext context ){
  return Card(
    clipBehavior: Clip.none,
    /* decoration: BoxDecoration(
      border: Border.all( color: Colors.deepOrange, width: 2 ),
      borderRadius: const BorderRadius.all( Radius.circular( 15 ) ),
    ), */
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
                child: Image.asset('assets/img/logoSplash.png',
                  height: 100,
                  width: 100,
                ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric( horizontal: 15 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Text( nombreTienda ),
                        Text("Calle Principal #4895, San Salvador, San Salvadooooooooooooooooooooooooooooooooooooor", maxLines: 2, overflow: TextOverflow.ellipsis,),
                        Text("Tel: 2264-1545")

                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
