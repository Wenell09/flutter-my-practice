import 'package:flutter/material.dart';
import 'package:latihan_http_provider/provider/user_http.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userHttp = Provider.of<UserHttp>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userHttp.deleteUserHttp(context);
        },
        child: const Icon(Icons.delete),
      ),
      appBar: AppBar(
        title: const Text("HTTP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Consumer<UserHttp>(
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              builder: (context, UserState, child) => (UserState.user["name"] ==
                      null)
                  ? const Text(
                      "No Post Data",
                      style: TextStyle(fontSize: 20),
                    )
                  : Text(
                      "${UserState.user["id"]} | ${UserState.user["name"]} | ${UserState.user["job"]} | ${UserState.user["createdAt"]}"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                userHttp.postUserHttp(context, "Wenell", "Gamers");
              },
              child: const Text("Post HTTP"),
            ),
            const SizedBox(
              height: 10,
            ),
            Consumer<UserHttp>(
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              builder: (context, UserState, child) => (UserState
                          .user["email"] ==
                      null)
                  ? const Text(
                      "No Get Data",
                      style: TextStyle(fontSize: 20),
                    )
                  : Text(
                      "${UserState.user["id"].toString()} | ${UserState.user["email"]} | ${UserState.user["first_name"]} ${UserState.user["last_name"]}"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                userHttp.getUserHttp(context, "1");
              },
              child: const Text("GET HTTP"),
            ),
          ],
        ),
      ),
    );
  }
}
