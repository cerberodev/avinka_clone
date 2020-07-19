import 'package:avinka/domain/cart.dart';
import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'orders_screen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> widgets = [
    HomeScreen(),
    CartScreen(),
    OrdersScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            title: Text("Inicio"),
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                ),
                context.watch<Cart>().items.length == 0
                    ? SizedBox.shrink()
                    : Positioned(
                        left: 12,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 6,
                          child: Text(
                            context.watch<Cart>().items.length.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
              ],
            ),
            title: Text(
              "Carrito",
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit,
              ),
              title: Text(
                "Pedidos",
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit,
              ),
              title: Text(
                "Mi cuenta",
              )),
        ],
      ),
    );
  }
}
