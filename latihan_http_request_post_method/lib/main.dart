import 'package:flutter/material.dart';
import 'package:latihan_http_request_post_method/get_user.dart';
import 'package:latihan_http_request_post_method/post_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = PostResult();
  User user = User();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan http request"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text((postResult.id == null)
                ? "Tidak ada data"
                : "${postResult.id} | ${postResult.name} | ${postResult.job} | ${postResult.created}"),
            // ignore: unnecessary_null_comparison
            ElevatedButton(
              onPressed: () {
                PostResult.connectToAPI("Wenell", "Programmer").then((value) {
                  setState(() {
                    postResult = value;
                  });
                });
              },
              child: const Text("POST"),
            ),
            Text((user.id == null)
                ? "Tidak ada data"
                : "${user.id} | ${user.name}"),
            ElevatedButton(
              onPressed: () {
                User.connectToAPI("2").then((value) {
                  setState(() {
                    user = value;
                  });
                });
              },
              child: const Text("GET"),
            ),
          ],
        )),
      ),
    );
  }
}
