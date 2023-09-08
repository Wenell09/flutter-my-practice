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
          title: const Text("widget Drawer"),
        ),
        body: const Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              height: 130,
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: const Text("Menu Drawer"),
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
