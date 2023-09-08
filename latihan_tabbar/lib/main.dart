import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("contoh tab bar"),
            bottom: const TabBar(
              indicator: BoxDecoration(
                color: Colors.lightBlue,
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 3),
                ),
              ),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.mouse),
                  text: "Mouse",
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: "Computer",
                ),
                Tab(
                  icon: Icon(Icons.phone_android),
                  text: "Handphone",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("INI MOUSE"),
              ),
              Center(
                child: Text("INI COMPUTER"),
              ),
              Center(
                child: Text("INI HANDPHONE"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
