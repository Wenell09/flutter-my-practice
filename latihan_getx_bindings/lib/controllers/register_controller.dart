import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_bindings/routes/name_route.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  String? validasiNama(String value) {
    if (!GetUtils.isUsername(value)) {
      return "nama tidak boleh kosong";
    }
    return null;
  }

  String? validasiPassword(String value) {
    if (value.length < 6) {
      return "Password harus 6 kata";
    }
    return null;
  }

  void login() {
    if (formKey.currentState!.validate()) {
      Get.snackbar("Login", "Login berhasil");
      Get.offNamed(RouteName.count);
    } else {
      Get.snackbar(
          "Error", "Gagal login, periksa nama dan password dengan benar");
      Get.back();
    }
  }
}
