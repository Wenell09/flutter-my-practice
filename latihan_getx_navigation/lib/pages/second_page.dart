import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_routes/pages/end_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SECOND PAGE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "SECOND PAGE",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    "<<<prev",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () => Get.to(const EndPage()),
                  child: const Text(
                    "Next>>>",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
