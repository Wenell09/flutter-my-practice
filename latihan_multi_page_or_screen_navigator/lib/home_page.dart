import 'package:flutter/material.dart';
import 'package:latihan_multi_page_or_screen_navigator/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to second Page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
