import 'package:flutter/material.dart';
import 'package:latihan_rive_animation/button_day.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive animation"),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: ButtonDay(),
      ),
    );
  }
}
