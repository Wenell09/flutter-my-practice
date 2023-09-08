import 'package:flutter/material.dart';
import 'package:latihan_one_signal/main_page.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

// 6df5eb15-de82-4a1b-ae24-a0cc549d499f
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.initialize("6df5eb15-de82-4a1b-ae24-a0cc549d499f");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
