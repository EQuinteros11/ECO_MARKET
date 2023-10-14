
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uno/Pages/pedidos_lista.dart';
import 'package:uno/services/firebase_services.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/productos_model.dart';
import '../navbar.dart';


class OtraPagina extends StatefulWidget {
  const OtraPagina();

  @override
  State<OtraPagina> createState() => _OtraPaginaState();
}
List<ProductosModel> _ListaCarro =[
];

List<ProductosModel> _ListaEntidad = [
];


class _OtraPaginaState extends State<OtraPagina> {
  FirebaseService db = new FirebaseService();
  late StreamSubscription<QuerySnapshot> productSub;

  @override
  void initState() {
    super.initState();
    productSub?.cancel();
    productSub = db.getProductList().listen((QuerySnapshot snapshot) {
      final List<ProductosModel> products =
      snapshot.docs.map((documentSnapshot) =>
          ProductosModel.fromMap(documentSnapshot.metadata as Map<String, dynamic>)).toList();
      setState(() {
        _ListaEntidad = products;
      });
    });

  }
  @override
  void dispose() {
    productSub?.cancel();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(157, 160, 166, 1.0),
          foregroundColor: const Color.fromRGBO(65, 90, 119, 1.0),
          title: TextFormField(
            style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontSize: 17
            ),
            decoration: const InputDecoration(
              hintText: 'Buscar',
              labelText: 'Buscar',
              contentPadding: EdgeInsets.only(bottom: 10),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
              labelStyle: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                decorationColor: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            ),
          ),

          //Inicio de carrito
          actions: <Widget>[
            Padding(padding:
            const EdgeInsets.only(right: 16.0, top: 8.0),
             child: GestureDetector(
               child: Stack(
                 alignment: Alignment.topCenter,
                 children: <Widget>[
                   Icon(Icons.shopping_cart, size: 38,),
                   if(_ListaCarro.length > 0)
                     Padding(padding: const EdgeInsets.only(left: 2.0),
                       child: CircleAvatar(
                         radius: 8.0,
                         backgroundColor: Colors.red,
                         foregroundColor: Colors.white,
                         child: Text(
                           _ListaCarro.length.toString(), style: TextStyle(
                             fontSize: 12.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Raleway'),
                         ),
                       ),
                     ),
                 ],
               ),
               onTap: (){
                 if(_ListaCarro.isNotEmpty)
                   Navigator.of(context).push(MaterialPageRoute(
                       builder: (context)=>Cart(_ListaCarro),
                   ),
                   );
               },
             ),
            ),
          ],
          /* Text(widget.nombre,style: TextStyle(fontSize: 20.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'Raleway'),),*/
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.only(left: 24, top: 48),
                        height: 350,
                        child: ListView.builder(
                          itemCount: _ListaEntidad.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return Row(
                              children:<Widget> [
                                Container(
                                  height: 300,
                                  padding: new EdgeInsets.only(left: 10.0, bottom: 10.0),
                                  child: Card(
                                    elevation: 7.0,
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: CachedNetworkImage(imageUrl: '${_ListaEntidad[index].image}'+
                                      'alt=media',
                                        fit: BoxFit.cover,
                                      placeholder: (_,__){
                                        return Center(
                                          child: CupertinoActivityIndicator(
                                              radius: 15,
                                          ),
                                        );
                                      },)
                                    ),
                                  ),
                                )
                              ],

                            );
                          }

                        ),
                      )
                    ],
                  ),
                  Container(height: 3.0, color: Colors.grey),
                  SizedBox(
                    height: 5.0
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height / 1.5,
                    //cuadro empresa
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount:  _ListaEntidad.length,
                        itemBuilder: (context, index){
                          final String imagen = _ListaEntidad[index].image;
                          var item = _ListaEntidad[index];

                          return Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Stack(
                              fit: StackFit.loose,
                              alignment: Alignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(child: CachedNetworkImage(imageUrl: '${_ListaEntidad[index].image}'+
                                        'alt=media',
                                      fit: BoxFit.cover,
                                      placeholder: (_,__){
                                        return Center(
                                          child: CupertinoActivityIndicator(
                                            radius: 15,
                                          ),
                                        );
                                      },)
                                    ),

                                    Container(
                                      child: Text('${_ListaEntidad[index].name}.toString()',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text('${_ListaEntidad[index].price}.toString()', style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Raleway'
                                        ),),
                                        Padding(padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                                            child: Align(alignment: Alignment.bottomRight,
                                              child: GestureDetector(
                                                child: (!_ListaCarro.contains(item))
                                                    ? Icon(Icons.shopping_cart,
                                                  color: Colors.green,
                                                  size: 38,
                                                ):
                                                Icon(Icons.shopping_cart,
                                                  color: Colors.red,
                                                  size: 38,
                                                ),
                                                onTap: (){
                                                  setState((){
                                                    if(!_ListaCarro.contains(item))
                                                      _ListaCarro.add(item);
                                                    else
                                                      _ListaCarro.remove(item);
                                                  });
                                                },
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );

                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        )

    );
  }

}






