import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_getx_cli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class ItemView extends GetView<HomeController> {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  const ItemView({Key? key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.toNamed(Routes.EDIT, arguments: data.id.toString()),
      leading: const CircleAvatar(),
      title: Text(
        data.name.toString(),
      ),
      subtitle: Text(
        data.created.toString(),
      ),
      trailing: IconButton(
        onPressed: () => Get.defaultDialog(
          title: "Yakin Hapus",
          barrierDismissible: false,
          middleText: "",
          textCancel: "Tidak",
          onCancel: () => Get.back(),
          textConfirm: "Ya, Hapus",
          onConfirm: () {
            controller.delete(data.id.toString());
            Get.back();
          },
        ),
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
