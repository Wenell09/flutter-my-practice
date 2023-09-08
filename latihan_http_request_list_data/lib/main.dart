import 'package:flutter/material.dart';
import 'package:latihan_http_request_list_data/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = "Tidak ada data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HTTP REQUEST LIST DATA"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(data),
              ElevatedButton(
                  onPressed: () {
                    User.getUsers("2").then(
                      (value) {
                        data = "";
                        for (int i = 0; i < value.length; i++) {
                          data = "$data[ ${value[i].name} ]";
                          setState(() {});
                        }
                      },
                    );
                  },
                  child: const Text("Press button")),
            ],
          ),
        ),
      ),
    );
  }
}
