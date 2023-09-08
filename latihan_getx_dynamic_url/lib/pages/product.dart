import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All product"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed("/product/1?name=Sepatu Nike&size= XL"),
              child: const Text("Product 1"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed("/product/2?name=Sepatu Adidas&size= L"),
              child: const Text("Product 2"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed("/product/3?name=Sepatu Stephen Curry&size= XXL"),
              child: const Text("Product 3"),
            ),
          ],
        ),
      ),
    );
  }
}
