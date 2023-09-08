import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_bindings/routes/name_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Selamat Datang !!!",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.register);
              },
              child: const Icon(
                Icons.next_plan,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
