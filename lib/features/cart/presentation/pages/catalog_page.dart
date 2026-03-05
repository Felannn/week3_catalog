import 'package:flutter/material.dart';
import 'package:week3_catalog/features/cart/domain/entities/product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Es Teh Manis', price: '5000'),
      Product(id: '2', name: 'Kopi Hitam', price: '8000'),
      Product(id: '3', name: 'Cappuccino', price: '15000'),
      Product(id: '4', name: 'Matcha Latte', price: '18000'),
      Product(id: '5', name: 'Red Velvet Latte', price: '18000'),
      Product(id: '6', name: 'Thai Tea', price: '12000'),
      Product(id: '7', name: 'Lemon Tea', price: '10000'),
      Product(id: '8', name: 'Mineral Water', price: '4000'),
    ];
    return const Placeholder();
  }
}
