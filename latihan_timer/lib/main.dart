import 'dart:async';

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
  int counter = 0;
  bool isBlack = true;
  bool isStop = true;
  String text = "Selamat anda sudah menunggu selama 10 detik";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Timer"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                (counter >= 10) ? text : counter.toString(),
                style: TextStyle(
                    color: (isBlack) ? Colors.black : Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer(
                    const Duration(seconds: 5),
                    () {
                      setState(() {
                        isBlack = !isBlack;
                        if (!isBlack) {
                          isBlack;
                        } else {
                          !isBlack;
                        }
                      });
                    },
                  );
                },
                child: const Text("Berubah warna menunggu 5 detik"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                      if (!isBlack) {
                        isBlack;
                      } else {
                        !isBlack;
                      }
                    });
                  });
                },
                child: const Text("Berubah warna langsung"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  counter = 0;
                  isStop = false;
                  Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: const Text("Start timer"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  isStop = true;
                },
                child: const Text("stop timer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
