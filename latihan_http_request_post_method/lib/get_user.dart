import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String? id, name;
  User({this.id, this.name});

  static Future<User> connectToAPI(String id) async {
    Uri apiUrl = Uri.parse("https://reqres.in/api/users/$id");
    var apiResult = await http.get(apiUrl);
    var response = (json.decode(apiResult.body))["data"];

    return User(
      id: response["id"].toString(),
      name: response["first_name"] + " " + response["last_name"],
    );
  }
}
