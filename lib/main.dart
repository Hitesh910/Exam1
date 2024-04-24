import 'package:flutter/material.dart';
import 'package:shopink_app/screen/cart/cart_screen.dart';
import 'package:shopink_app/screen/home/home_screen.dart';
import 'package:shopink_app/screen/product/product_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => HomeScreen(),
      "product": (context) => ProductScreen(),
      "cart": (context) => CartScreen(),
    },
  ));
}
