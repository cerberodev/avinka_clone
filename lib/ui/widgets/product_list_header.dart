import 'package:flutter/material.dart';

class ProductListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Text("Productos destacados",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
