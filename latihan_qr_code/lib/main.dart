import 'package:flutter/material.dart';
import "package:qr_flutter/qr_flutter.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImageView(
            version: 6,
            backgroundColor: Colors.grey,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            data: "https://www.youtube.com/",
          ),
        ),
      ),
    );
  }
}
