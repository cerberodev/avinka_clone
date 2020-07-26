import 'package:avinka/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/cart.dart';
import 'domain/models/product.dart';
import 'ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Cart _cart;
  @override
  void initState() {
    _cart = Cart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<List<Product>>(
          create: (_) => Repository().getProducts(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (_) => _cart,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
        home: SplashScreen(),
      ),
    );
  }
}
