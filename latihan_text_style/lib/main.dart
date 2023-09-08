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
          title: const Text("Latihan text style"),
        ),
        body: const Center(
          child: Text(
            "Kalimat 1",
            style: TextStyle(
                fontFamily: "RobotoSlab",
                fontSize: 40,
                decoration: TextDecoration.underline,
                decorationColor: Colors.amber,
                decorationThickness: 3,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
