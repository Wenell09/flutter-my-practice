import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("selectable text and toggle button"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SelectableText(
                "Ini adalah selectable text",
                style: TextStyle(fontSize: 20),
                cursorColor: Colors.blue,
              ),
              ToggleButtons(
                isSelected: isSelected,
                children: const <Widget>[
                  Icon(Icons.computer),
                  Icon(Icons.phone_android),
                  Icon(Icons.phone_iphone),
                ],
                onPressed: (index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = (i == index) ? true : false;
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
