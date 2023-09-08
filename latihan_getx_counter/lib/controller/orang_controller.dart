import 'package:get/get.dart';
import 'package:latihan_getx_counter/model/orang.dart';

class OrangController extends GetxController {
  final orang = Orang(name: "wenell", umur: 19).obs;

  void changeFont() {
    orang.update((val) {
      (orang.value.name == orang.value.name!.toLowerCase())
          ? orang.value.name = orang.value.name!.toUpperCase()
          : orang.value.name = orang.value.name!.toLowerCase();
    });
  }
}
