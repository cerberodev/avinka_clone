import 'dart:collection';

import 'package:avinka/domain/cart.dart';
import 'package:avinka/domain/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  final bool isInCart;
  ProductListItem({this.product, this.isInCart});
  @override
  Widget build(BuildContext context) {
    HashMap<String, int> cart = Provider.of<Cart>(context).items;
    int itemCount = cart.containsKey(product.id) ? cart[product.id] : 0;
    double width = MediaQuery.of(context).size.width;
    width = isInCart ? width - 40 : width;
    if (itemCount == 0 && isInCart) {
      return SizedBox.shrink();
    }
    return Row(
      children: <Widget>[
        isInCart
            ? Center(
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            : SizedBox.shrink(),
        Container(
          width: width,
          child: ListTile(
            leading: Image.network(product.photo),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () => Provider.of<Cart>(context, listen: false)
                      .updateItems(product.id, 1),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red[900],
                    child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(itemCount.toString()),
                InkWell(
                  onTap: () => Provider.of<Cart>(context, listen: false)
                      .updateItems(product.id, -1),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red[900],
                    child: Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            title: Column(
              children: <Widget>[
                Text(product.name),
                Text(
                  product.description,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            subtitle: Text(
              "S/. ${product.pricing}",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
