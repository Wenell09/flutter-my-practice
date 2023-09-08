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
          title: const Text("Latihan stack dan align widget"),
        ),
        body: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black26,
                          )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black26,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                    ],
                  ))
            ],
          ),
          ListView(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada di tengah lapisan stack",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          Align(
            alignment: const Alignment(0.9, 0.9),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              child: const Text("My button"),
            ),
          )
        ]),
      ),
    );
  }
}
