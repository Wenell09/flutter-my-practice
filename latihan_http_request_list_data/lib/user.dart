import 'dart:convert';
import "package:http/http.dart" as http;

class User {
  String? id, name;

  User({this.id, this.name});

  factory User.createdUser(Map<String, dynamic> object) {
    return User(
      id: object["id"].toString(),
      name: object["first_name"] + " " + object["last_name"],
    );
  }

  static Future<List<User>> getUsers(String page) async {
    Uri apiUrl = Uri.parse("https://reqres.in/api/users?page=$page");

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> listUsers = (jsonObject as Map<String, dynamic>)["data"];

    List<User> users = [];

    for (int i = 0; i < listUsers.length; i++) {
      users.add(User.createdUser(listUsers[i]));
    }
    return users;
  }
}
