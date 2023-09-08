import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileB implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileC());
  }
}
