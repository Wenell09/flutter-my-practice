// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String? name;
  final int? age;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  MyApp({super.key, this.name, this.age});
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': name, // John Doe

            'age': age // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("CRUD"),
            backgroundColor: Colors.blue[900],
          ),
          body: Stack(
            children: [
              ListView(
                children: const <Widget>[
                  //// VIEW DATA HERE
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-5, 0),
                          blurRadius: 15,
                          spreadRadius: 3)
                    ]),
                    width: double.infinity,
                    height: 130,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                controller: nameController,
                                decoration:
                                    const InputDecoration(hintText: "Name"),
                              ),
                              TextField(
                                controller: ageController,
                                decoration:
                                    const InputDecoration(hintText: "Age"),
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: const Text(
                                'Add Data',
                              ),
                              onPressed: () {
                                addUser();
                                nameController.text = "";
                                ageController.text = "";
                              }),
                        )
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
