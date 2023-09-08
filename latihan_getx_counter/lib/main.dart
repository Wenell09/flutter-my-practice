import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_counter/controller/counter_controller.dart';
import 'package:latihan_getx_counter/controller/orang_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                Get.find<CounterController>().increment();
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.find<CounterController>().decrement();
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                orangC.changeFont();
              },
              child: const Icon(Icons.person),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text("Latihan getX"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              init: CounterController(),
              builder: (counterC) {
                return Text(
                  "Angka ke - ${counterC.counter}",
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Obx(() => Text(
                  "Nama Saya - ${orangC.orang.value.name}",
                  style: const TextStyle(fontSize: 30),
                )),
          ],
        )),
      ),
    );
  }
}
