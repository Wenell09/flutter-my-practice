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
        backgroundColor: Colors.green,
        body: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                buildCard(Icons.contact_mail, "Contact Person"),
                buildCard(Icons.add, "Add contact"),
              ],
            )),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
