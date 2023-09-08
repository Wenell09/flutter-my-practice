import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String? id, name, job, created;
  PostResult({this.id, this.name, this.job, this.created});

  static Future<PostResult> connectToAPI(String name, String job) async {
    Uri apiUrl = Uri.parse("https://reqres.in/api/users");
    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});
    var response = json.decode(apiResult.body);

    return PostResult(
      id: response["id"],
      name: response["name"],
      job: response["job"],
      created: response["createdAt"],
    );
  }
}
