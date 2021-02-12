import 'package:flutter/material.dart';
import 'package:flutter_bloc_patter/screens/cart_screen.dart';
import 'package:flutter_bloc_patter/screens/product_list_screen.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(BuildContext context) => ProductListScreen(),
        "/cart":(BuildContext context) => CartScreen(),
      },
      initialRoute: "/",
    );
  }
}