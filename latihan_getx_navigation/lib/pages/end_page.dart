import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("END PAGE"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "END PAGE",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: const Text(
              "<<<Prev",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      )),
    );
  }
}
