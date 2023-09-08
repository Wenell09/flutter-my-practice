import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../data/providers/product_provider.dart';

class HomeController extends GetxController {
  var products = List<Product>.empty().obs;

  void add(String name) {
    if (name != "") {
      final date = DateTime.now().toIso8601String();
      ProductProvider().postProduct(name, date).then((response) {
        final data = Product(id: response["name"], name: name, created: date);
        products.add(data);
        Get.back();
      });
    } else {
      Get.defaultDialog(
          title: "Gagal Submit",
          content: const Text(
            "Isi field Product Name",
            textAlign: TextAlign.center,
          ));
    }
  }

  Product findById(String id) {
    return products.firstWhere((element) => element.id == id);
  }

  void delete(String id) {
    ProductProvider()
        .deleteProduct(id)
        .then((_) => products.removeWhere((element) => element.id == id));
  }

  void edit(String id, String name) {
    final data = findById(id);
    ProductProvider().editProduct(id, name).then((_) {
      data.name = name;
      products.refresh();
      Get.back();
    });
  }
}
