// ignore_for_file: unnecessary_string_interpolations, prefer_adjacent_string_concatenation

import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  String url =
      "https://get-cli-project-fe1c4-default-rtdb.asia-southeast1.firebasedatabase.app/";

  Future<void> editProduct(String id, String name) async {
    await patch("$url" + 'products/$id.json', {"name": name});
  }

  Future<dynamic> postProduct(String name, String date) async {
    final response =
        await post("$url" + 'products.json', {"name": name, "created": date});
    return response.body;
  }

  Future<void> deleteProduct(String id) async =>
      await delete("$url" + 'products/$id.json');
}
