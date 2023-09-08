import 'package:flutter/material.dart';
import 'package:latihan_provider_state_management/application_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColors>(
        create: (context) => AplicationColors(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AplicationColors>(
              builder: (context, applicationColors, _) => Text(
                "Provide state management",
                style: TextStyle(color: applicationColors.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AplicationColors>(
                  builder: (context, applicationColors, _) => AnimatedContainer(
                    width: 100,
                    height: 100,
                    color: applicationColors.color,
                    margin: const EdgeInsets.all(5),
                    duration: const Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text("RED"),
                    ),
                    Consumer<AplicationColors>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.getBlue,
                        onChanged: (newValue) {
                          applicationColor.setBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text("BLUE"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
