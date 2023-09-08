import 'package:flutter/material.dart';
import 'package:latihan_routes/pages/end_page.dart';
import 'package:latihan_routes/pages/home_page.dart';
import 'package:latihan_routes/pages/login_page.dart';
import 'package:latihan_routes/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {
        "/homePage": (context) => const HomePage(),
        "/secondPage": (context) => const SecondPage(),
        "/endPage": (context) => const EndPage()
      },
    );
  }
}
