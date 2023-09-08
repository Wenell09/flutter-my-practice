// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  TextEditingController countControl = TextEditingController();
  var count = 0.obs;

  void tambah() => count++;
  void bersih() {
    count.value = 0;
    countControl.text = '';
  }

  @override
  void onInit() {
    /// ini adalah getx worker
    // ever(count, (callback) => print("Dijalankan"));
    // everAll([count], (callback) => print("Dijalankan"));
    // once(count, (callback) => print("Dijalankan"));
    // debounce(count, (callback) => print("Dijalankan"),
    //     time: const Duration(seconds: 3));
    // interval(count, (callback) => print("Dijalankan"),
    //     time: const Duration(seconds: 3));
    ///
    super.onInit();
  }
}
