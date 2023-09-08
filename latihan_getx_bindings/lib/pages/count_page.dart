import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_bindings/controllers/count_controller.dart';
import 'package:latihan_getx_bindings/controllers/register_controller.dart';

class CountPage extends StatelessWidget {
  CountPage({super.key});
  final registerC = Get.find<RegisterController>();
  final countC = Get.find<CounterControlller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.tambah();
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Count Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang ${registerC.nameController.text} !!!",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => Text(
                "${countC.counter}",
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
