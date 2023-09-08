import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("Nama", controller.text);
    pref.setBool("isOn", isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("Nama") ?? "No Name";
  }

  Future<bool> getBool() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("isOn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shared preferences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isOn,
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  saveData();
                  setState(() {});
                },
                child: const Text("Save"),
              ),
              ElevatedButton(
                onPressed: () {
                  getNama().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getBool().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: const Text("Load"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
