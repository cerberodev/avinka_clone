import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String name;
  String photo;
  String description;
  String presentation;
  num pricing;
  String id;

  Product(
      {this.id,
      this.photo,
      this.name,
      this.description,
      this.presentation,
      this.pricing});

  factory Product.fromSnapshot(DocumentSnapshot snapshot) {
    return Product(
      name: snapshot.data["name"],
      presentation: snapshot.data["presentation"],
      description: snapshot.data["description"],
      pricing: snapshot.data["pricing"],
      photo: snapshot.data["defaultPhoto"],
      id: snapshot.documentID,
    );
  }

  static List<Product> fromSnapshotList(List<DocumentSnapshot> snapshotList) {
    List<Product> products = List<Product>();
    snapshotList.forEach((snapshot) {
      products.add(Product.fromSnapshot(snapshot));
    });

    return products;
  }
}
