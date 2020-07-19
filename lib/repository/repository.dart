import 'package:avinka/domain/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Repository {
  Stream<List<Product>> getProducts() {
    return Firestore.instance
        .collection('products')
        .snapshots()
        .map((event) => Product.fromSnapshotList(event.documents));
  }
}
