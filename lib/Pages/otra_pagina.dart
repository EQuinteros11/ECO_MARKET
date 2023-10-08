
import 'package:flutter/material.dart';
import 'package:uno/Pages/pedidos_lista.dart';

import '../models/productos_model.dart';
import '../navbar.dart';


class OtraPagina extends StatefulWidget {
  final nombre;
  const OtraPagina({this.nombre});

  @override
  State<OtraPagina> createState() => _OtraPaginaState();
}
List<ProductosModel> _ListaCarro =[
];

List<ProductosModel> _ListaEntidad = [
  ProductosModel(name: "Banano sa de cv", image: "uno.png", color: "amarillo", price: 250),
  ProductosModel(name: "Coca Cola", image: "dos.png", color: "amarillo", price: 250),
  ProductosModel(name: "StarBucks Coffee", image: "cuatro.png", color: "amarillo", price: 250),
  ProductosModel(name: "KFC", image: "cinco.png", color: "amarillo", price: 250)
];



class _OtraPaginaState extends State<OtraPagina> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    depositar();
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
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imagenescliente/VistaPrincipal.png"),
                    fit: BoxFit.cover
                )
            ),
            child:_cuadroEmpresa(widget.nombre)
        )

    );
  }

  GridView _cuadroEmpresa(final entidad){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                    Expanded(child: new Image.asset("assets/imagenescliente/$imagen"),
                    ),

                    Container(
                      child: Text(entidad,
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
                        Text("\$ ${item.price.toStringAsFixed(2)}", style: TextStyle(
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
    );

  }
  void depositar() {
    var list = _ListaEntidad;
    // Usando setState para actualizar el valor del contador.
    setState(() {
      _ListaEntidad = list;
    });
  }
}





