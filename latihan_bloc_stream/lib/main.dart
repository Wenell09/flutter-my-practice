import 'package:flutter/material.dart';
import 'package:latihan_bloc_stream/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc colorbloc = ColorBloc();
  @override
  void dispose() {
    colorbloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                colorbloc.eventSink.add(ColorEvent.toAmber);
              },
              backgroundColor: Colors.amber,
            ),
            const SizedBox(width: 5),
            FloatingActionButton(
              onPressed: () {
                colorbloc.eventSink.add(ColorEvent.toBlue);
              },
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text("Bloc tanpa library"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: colorbloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: 100,
                height: 100,
                color: snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
