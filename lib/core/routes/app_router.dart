import 'package:flutter/material.dart';
import 'package:week3_catalog/features/cart/presentation/pages/cart_page.dart';
import 'package:week3_catalog/features/cart/presentation/pages/catalog_page.dart';

class AppRouter {
  static const String catalog = '/';
  static const String cart = '/cart';

  static Map<String, WidgetBuilder> get routes => {
    catalog: (context) => CatalogPage(),
    cart: (context) => CartPage(),
  };
}