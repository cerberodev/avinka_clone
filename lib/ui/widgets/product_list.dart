import 'package:avinka/domain/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_list_header.dart';
import 'product_list_item.dart';

class ProductList extends StatelessWidget {
  ProductList({this.isInCart = false});
  final bool isInCart;
  @override
  Widget build(BuildContext context) {
    List<Product> products = context.watch<List<Product>>();
    if (products == null) {
      products = List<Product>();
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length + 1,
      itemBuilder: (BuildContext context, int pos) {
        return pos == 0
            ? ProductListHeader()
            : ProductListItem(product: products[pos - 1], isInCart: isInCart);
      },
    );
  }
}
