// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserHttp with ChangeNotifier {
  Map<String, dynamic> _user = {};
  Map<String, dynamic> get user => _user;
  int get jumlahData => _user.length;
  Uri? url;

  void postUserHttp(BuildContext context, String name, String job) async {
    url = Uri.parse("https://reqres.in/api/users");
    var response = await http.post(url!, body: {"name": name, "job": job});
    _user = json.decode(response.body);
    notifyListeners();
    if (response.statusCode == 201) {
      handlingStatusHttp(context, "Data berhasil di Post");
    } else {
      handlingStatusHttp(context, "Data gagal di Post");
    }
  }

  void getUserHttp(BuildContext context, String id) async {
    url = Uri.parse("https://reqres.in/api/users/$id");
    var response = await http.get(url!);
    _user = (json.decode(response.body))["data"];
    notifyListeners();
    if (response.statusCode == 200) {
      handlingStatusHttp(context, "Data berhasil di Get");
    } else {
      handlingStatusHttp(context, "Data gagal di Get");
    }
  }

  void deleteUserHttp(BuildContext context) async {
    var response = await http.delete(url!);
    if (response.statusCode == 204) {
      _user = {};
      notifyListeners();
      handlingStatusHttp(context, "data berhasil di Delete");
    } else {
      handlingStatusHttp(context, "null");
    }
  }
}

handlingStatusHttp(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 1),
    ),
  );
}
