import 'package:flutter/material.dart';
import 'package:week3_catalog/core/routes/app_router.dart';
import 'package:week3_catalog/injection.dart';

void main() {
  runApp(buildApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
      title: 'Felan',
      debugShowCheckedModeBanner: false,
    );
  }
}