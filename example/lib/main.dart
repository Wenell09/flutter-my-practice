import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: Center(
            child: Container(
                color: Colors.amber,
                width: 150,
                height: 150,
                child: const Text(
                  "Perkenalkan saya Nabil, saya sedang belajar flutter",
                  // maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ))),
      ),
    );
  }
}
