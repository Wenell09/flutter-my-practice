import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic URL getX"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.toNamed("/product"),
            child: const Text("Product")),
      ),
    );
  }
}
