import 'package:flutter/material.dart';
import 'package:latihan_getx_worker/controllers/count.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final countC = Get.put(CountController());
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Worker"),
        actions: [
          IconButton(
            onPressed: () {
              countC.bersih();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => Text(
                  "Fungsi sudah dijalankan : ${countC.count} x",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: countC.countControl,
                onChanged: (_) => countC.tambah(),
                decoration: const InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
