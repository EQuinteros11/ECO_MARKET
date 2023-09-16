import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ClienteListadoTiendas extends StatefulWidget {
  const ClienteListadoTiendas({super.key});

  @override
  State<ClienteListadoTiendas> createState() => _ClienteListadoTiendasState();
}

class _ClienteListadoTiendasState extends State<ClienteListadoTiendas> {
  List<CardItem> cardItems = [];

  @override
  void initState(){
    super.initState();
    cardItems = [
      CardItem(nombre: "Juancho", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
      CardItem(nombre: "Pedro", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
      CardItem(nombre: "Jose", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
      CardItem(nombre: "Luis", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
      CardItem(nombre: "Carlos", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
      CardItem(nombre: "Mario", direccion: "direccion", telefono: "telefono", imagen: "assets/img/logoSplash.png"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Que funcione esta cosa",
                            border: InputBorder.none,
                            icon: Icon(Icons.search)
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.filter_list)
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric( horizontal: 15 ),
              child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: ( 3.0 ),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                    children: cardItems.map(( cardItem ) {
                    return buildCard( cardItem );
                    }).toList(),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }

  /*
  Widget buildCard( CardItem cardItem ){
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
            child: PageView.builder(
                itemBuilder: ( context, index ){
                  return Image.asset(
                    cardItem.imagen,
                    fit: BoxFit.cover,
                  );
                }
            ),
          ),
          ListTile(
            title: Text(
              cardItem.nombre,
              style: const TextStyle(
                color: Colors.black
              ),
            ),
            subtitle: Text(
              cardItem.direccion
            ),
            trailing: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text("dataaaa"),
            ),
          )
        ],
      ),
    );
  }
  */


  Widget buildCard( CardItem cardItem ){
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
                child: Image.asset(
                  cardItem.imagen,
                  fit: BoxFit.cover,
                )
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric( horizontal: 15 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( cardItem.nombre ),
                      Text( cardItem.direccion,
                        maxLines: 2, overflow:
                        TextOverflow.ellipsis,
                      ),
                      Text( cardItem.telefono )

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
}



class CardItem {
  final String nombre;
  final String direccion;
  final String telefono;
  final String imagen;

  CardItem({ required this.nombre, required this.direccion, required this.telefono, required this.imagen });
}