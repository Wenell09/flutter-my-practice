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
          title: const Text("Application row and column"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Data 1"),
            Text("Data 2"),
            Text("data 3"),
            Row(children: [Text("Data 5"), Text("data 5"), Text("data 6")]),
          ],
        ),
      ),
    );
  }
}
