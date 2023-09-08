import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product ${Get.parameters['id']}"),
      ),
      body: Center(
        child: Text(
            "Nama Product : ${Get.parameters['name']} dan Ukuran : ${Get.parameters['size']}"),
      ),
    );
  }
}
