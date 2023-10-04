
import 'package:flutter/material.dart';

import '../models/productos_model.dart';
import '../navbar.dart';

class Cart extends StatefulWidget {
  final List<ProductosModel> _cart;
  Cart(this._cart);
  @override
  State<Cart> createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);
  final _scrollController = ScrollController();
  var _firstScroll = true;
  bool _enable = false;
  List<ProductosModel> _cart;

  Container Pagototal(List<ProductosModel> _cart){
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(left: 120),
      height: 70,
      width: 400,
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          Text("Total \$${ValorTotal(_cart)}",
            style: TextStyle(fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),)
        ],
      ),
    );
  }

  String ValorTotal(List<ProductosModel> listaProductos){
    double total = 0.0;
    for(int i =0; i < listaProductos.length;i++){
      total = total+listaProductos[i].price * listaProductos[i].quantity;
    }
    return total.toStringAsFixed(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(157, 160, 166, 1.0),
        foregroundColor: const Color.fromRGBO(65, 90, 119, 1.0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.restaurant_menu),
            onPressed: null,
            color: Colors.white,
          )
        ],
        title: Text(
          "Detalle",
          style: TextStyle(fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway'),

        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.white,
        ),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details){
          if(_enable && _firstScroll){
            _scrollController.jumpTo(_scrollController.position.pixels - details.delta.dy);

          }
        },
        onVerticalDragEnd: (_){
          if(_enable) _firstScroll = false;
    },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _cart.length,
                itemBuilder: (context, index){
                  final String imagen = _cart[index].image;
                  var item = _cart[index];
                  return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                            child: Column(
                              children: <Widget> [
                                Row(
                                  children: <Widget>[
                                    Expanded(child: Container(
                                      width: 100,
                                      height: 100,
                                      child: new Image.asset("assets/imagenescliente/$imagen",
                                      fit: BoxFit.contain,),
                                    )),
                                    Column(
                                      children: <Widget>[
                                        Text(item.name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 15.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Raleway'),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 120,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.red[600],
                                                boxShadow:[BoxShadow(
                                                  blurRadius: 6.0,
                                                  color: Colors.blue,
                                                  offset: Offset(0.0,1.0)
                                                    )
                                                  ],
                                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                              ),
                                              margin: EdgeInsets.only(top: 20.0),
                                              padding: EdgeInsets.all(2.0),
                                              child: new Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height:   8.0,
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.remove),
                                                    onPressed: (){
                                                      _removeProduct(index);
                                                      ValorTotal(_cart);
                                                    },
                                                    color: Colors.white,
                                                  ),
                                                  Text('${_cart[index].quantity}',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 16.0,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'Raleway'),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.add),
                                                    onPressed: (){
                                                      _addProduct(index);
                                                      ValorTotal(_cart);
                                                    },
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 38.0,
                                    ),
                                    Text(item.price.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 24.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway'),
                                    ),
                                  ],
                                )
                              ],
                          ),
                          ),
                        Divider(
                          color: Colors.purple,

                        )
                  ],

                  );
                },
            ),
            SizedBox(
              width: 10.0,
            ),
            Pagototal(_cart),
            SizedBox(
              width: 20.0,
            ),
            Container(
              height: 100,
              width: 200,
              padding: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
        ),
    );
  }
  _addProduct(int index){
    setState(() {
      _cart[index].quantity++;
    });
  }
  _removeProduct(int index){
    setState(() {
      _cart[index].quantity--;
    });
  }
}
