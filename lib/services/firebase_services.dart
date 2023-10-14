import 'dart:html';
import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:uno/models/productos_model.dart';


final CollectionReference productColletion =
    FirebaseFirestore.instance.collection('productos');

class FirebaseService{
      static final FirebaseService _instance = new FirebaseService.internal();
      factory FirebaseService() => _instance;

      FirebaseService.internal();
      Future<ProductosModel> createProduct(
            String name, String image, int price, int quantity ){
            final TransactionHandler createTransaccion = (Transaction tx) async {

                  final DocumentSnapshot docu = await tx.get(productColletion.doc());
                  final ProductosModel producto = new ProductosModel(docu.id, name, image, price, quantity);
                  final Map<String, dynamic> data = producto.toMap();
                  await tx.set(docu.reference, data);
                  return data;
            };
            return FirebaseFirestore.instance.runTransaction(createTransaccion).then((mapData) {
              return ProductosModel.fromMap(mapData);
            }
            ).catchError((error){
              print('error: $error');
              return null;
            });
      }
      Stream<QuerySnapshot> getProductList({int? offset,int? limit}){
            Stream<QuerySnapshot> snapshot = productColletion.snapshots();
            if (offset != null){
                  snapshot = snapshot.skip(offset);
            }
            if(limit != null){
                  snapshot = snapshot.skip(limit);
            }
            return snapshot;
      }

}

