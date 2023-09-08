import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latihan_progress_bar/progress_bar.dart';
import 'package:latihan_progress_bar/set_provider.dart';
import 'package:provider/provider.dart';

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
          title: const Text("Progress Bar"),
        ),
        body: Center(
          child: ChangeNotifierProvider<SetProvider>(
            create: (context) => SetProvider(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<SetProvider>(
                  builder: (context, setprovider, _) => ProgressBar(
                    width: 200,
                    value: setprovider.time,
                    totalValue: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Consumer<SetProvider>(
                  builder: (context, setprovider, _) => (setprovider.time == 0)
                      ? const Text(
                          "Sayang sekali, waktu anda sudah habis",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      : const Text(""),
                ),
                Consumer<SetProvider>(
                  builder: (context, setprovider, _) => ElevatedButton(
                    onPressed: () {
                      Timer.periodic(const Duration(seconds: 1), (timer) {
                        if (setprovider.time == 0) {
                          timer.cancel();
                        } else {
                          setprovider.time -= 1;
                        }
                      });
                    },
                    child: const Text("Start"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
