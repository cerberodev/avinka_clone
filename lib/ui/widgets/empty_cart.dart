import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Icon(Icons.access_alarm),
            Text("Tu carrito esta vacio"),
            Text("Parece que aun no has elegido\nque comprar"),
          ],
        ),
      ),
    );
  }
}
