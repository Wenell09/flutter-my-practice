import 'package:flutter/material.dart';
import 'package:latihan_getx_dynamic_url/pages/home_page.dart';
import 'package:latihan_getx_dynamic_url/pages/product.dart';
import 'package:latihan_getx_dynamic_url/pages/product_detail.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: [
        GetPage(
          name: "/home-page",
          page: () => const HomePage(),
        ),
        GetPage(
          name: "/product",
          page: () => const Product(),
        ),
        GetPage(
          name: "/product/:id?",
          page: () => const ProductDetail(),
        ),
      ],
    );
  }
}
