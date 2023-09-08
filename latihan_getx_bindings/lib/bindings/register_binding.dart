import 'package:get/get.dart';
import 'package:latihan_getx_bindings/controllers/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
