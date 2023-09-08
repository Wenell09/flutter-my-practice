import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_getx_cli/app/modules/home/views/item_view.dart';
import 'package:latihan_getx_cli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.ADD),
              icon: const Icon(Icons.add))
        ],
      ),
      body: Obx(() => controller.products.isEmpty
          ? const Center(
              child: Text(
                'Belum ada data',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, i) {
                final data = controller.products[i];
                return ItemView(
                  data: data,
                );
              },
            )),
    );
  }
}
