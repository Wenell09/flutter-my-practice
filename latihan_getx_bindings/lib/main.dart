import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_bindings/pages/home_page.dart';
import 'package:latihan_getx_bindings/routes/page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const HomePage(), getPages: GetPageRoutes.routePage);
  }
}
