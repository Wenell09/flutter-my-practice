import 'package:get/get.dart';

class CounterControlller extends GetxController {
  var _counter = 0.obs;

  void tambah() => _counter++;

  int get counter => _counter.value;
}
