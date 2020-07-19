import 'package:avinka/domain/cart.dart';
import 'package:avinka/ui/widgets/empty_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/buy_button.dart';
import 'widgets/product_list.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int productCount = context.watch<Cart>().items.length;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AppBar(
          title: Text("Carrito de Compra"),
          automaticallyImplyLeading: false,
        ),
        Container(
          height: 40,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("$productCount producto${productCount == 1 ? "" : "s"}"),
              Text("minimo S/ 50.00")
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height - 40 - 56 - 80 - 48,
            child:
                productCount == 0 ? EmptyCart() : ProductList(isInCart: true)),
        BuyButton(),
      ],
    );
  }
}
