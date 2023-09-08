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
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Text field"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 101, 172, 230),
                      filled: true,
                      prefixIcon: const Icon(Icons.adb),
                      prefixText: "Nama",
                      icon: const Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller,
                  ),
                  Text(controller.text),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
