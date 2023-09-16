import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getTiendas() async {
  List tiendas = [];
  CollectionReference collectionReferenceTiendas = db.collection('ctl_Tienda');

  QuerySnapshot queryTiendas = await collectionReferenceTiendas.get();
  queryTiendas.docs.forEach( ( tienda ) {
    tiendas.add( tienda.data() );
    print(tienda.data());
  });

  return tiendas;
}