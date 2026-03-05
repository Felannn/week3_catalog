import 'package:flutter/material.dart';
import 'package:week3_catalog/core/routes/app_router.dart';
import 'package:week3_catalog/features/cart/domain/entities/product.dart';
import 'package:week3_catalog/features/cart/presentation/widgets/add_button_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('List Minuman'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart,),
            onPressed: () => Navigator.pushNamed(context, AppRouter.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}
