import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title = "title";
  String content = "content";

  @override
  void initState() {
    super.initState();

    OneSignal.InAppMessages.addClickListener((event) {});
    OneSignal.InAppMessages.addWillDisplayListener((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("One signal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title),
            const SizedBox(
              height: 20,
            ),
            Text(content)
          ],
        ),
      ),
    );
  }
}
