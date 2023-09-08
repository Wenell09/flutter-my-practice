import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  final homeController = Get.find<HomeController>();
  EditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data = homeController.findById(Get.arguments);
    controller.name.text = data.name.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: <Widget>[
          TextField(
            autocorrect: false,
            controller: controller.name,
            decoration: const InputDecoration(
              labelText: "Product Name",
              hintText: "Masukkan Nama Product",
              border: OutlineInputBorder(),
            ),
            onEditingComplete: () =>
                homeController.edit(Get.arguments, controller.name.text),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () =>
                homeController.edit(Get.arguments, controller.name.text),
            child: const Text("Edit Product Name"),
          )
        ]),
      ),
    );
  }
}
