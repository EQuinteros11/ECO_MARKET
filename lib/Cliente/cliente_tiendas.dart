import 'package:flutter/material.dart';

import '../Pages/otra_pagina.dart';
import '../models/productos_model.dart';
import '../navbar.dart';

class ClienteListadoTiendas extends StatefulWidget {
  const ClienteListadoTiendas({super.key});

  @override
  State<ClienteListadoTiendas> createState() => _ClienteListadoTiendasState();
}
List<ProductosModel> _ListaEntidad =[
  ProductosModel(name: "Banano sa de cv", image: "uno.png", color: "amarillo", price: 250),
  ProductosModel(name: "Coca Cola", image: "dos.png", color: "amarillo", price: 250),
  ProductosModel(name: "StarBucks Coffee", image: "cuatro.png", color: "amarillo", price: 250),
  ProductosModel(name: "KFC", image: "cinco.png", color: "amarillo", price: 250)
];
class _ClienteListadoTiendasState extends State<ClienteListadoTiendas> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(157, 160, 166, 1.0),
          foregroundColor: const Color.fromRGBO(65, 90, 119, 1.0),
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imagenescliente/VistaPrincipal.png"),
                    fit: BoxFit.cover
                )
            ),
            child:_cuadroEmpresa()
        )
    );
  }
}
GridView _cuadroEmpresa(){
  return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount:  _ListaEntidad.length,
      itemBuilder: (context, index){
        final String imagen = _ListaEntidad[index].image;
        var item = _ListaEntidad[index];
        return GestureDetector(
          onTap: ()=> Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>OtraPagina(
                nombre: item.name,
              ),
            ),
          ),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
            color: Colors.transparent,
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align( alignment:  Alignment.topRight,
                      child: Icon(Icons.star, size: 35, color: Colors.deepOrange.shade700,),
                    ),
                    Expanded(child: new Image.asset("assets/imagenescliente/$imagen",),
                    ),

                    Container(
                      width: 600,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.white),
                          color: Colors.lightBlueAccent.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                      ),

                      padding: EdgeInsets.only(left: 100, right: 100, top: 15,bottom: 15),
                      child: Text(item.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Raleway'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }
  );
}
