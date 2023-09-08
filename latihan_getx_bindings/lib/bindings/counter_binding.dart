import 'package:get/get.dart';
import 'package:latihan_getx_bindings/controllers/count_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterControlller());
  }
}
