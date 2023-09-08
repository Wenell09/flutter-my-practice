import 'package:flutter/material.dart';
import 'package:latihan_http_provider/home_page.dart';
import 'package:latihan_http_provider/provider/user_http.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => UserHttp(),
        child: const HomePage(),
      ),
    );
  }
}
