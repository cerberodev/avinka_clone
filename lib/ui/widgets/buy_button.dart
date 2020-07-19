import 'dart:collection';

import 'package:avinka/domain/cart.dart';
import 'package:avinka/domain/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HashMap<String, int> items = context.watch<Cart>().items;
    if (items.length == 0) {
      return SizedBox.shrink();
    }
    List<Product> products = context.watch<List<Product>>();
    double total = 0;
    products.forEach((product) {
      double price = items.containsKey(product.id) ? product.pricing : 0;
      int quantity = items.containsKey(product.id) ? items[product.id] : 0;

      total = total + price * quantity;
    });
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ButtonTheme.fromButtonThemeData(
        data: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.pink[500],
          disabledColor: Colors.pink[200],
        ),
        child: RaisedButton(
            onPressed: total < 50 ? null : onPressed,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Procesar compra"),
                Text("S/ ${total.toStringAsFixed(2)}")
              ],
            )),
      ),
    );
  }

  void onPressed() {}
}
