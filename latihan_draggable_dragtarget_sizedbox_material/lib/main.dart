import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color? colorTarget;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan draggable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  // ignore: sort_child_properties_last
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.8),
                      shape: const StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  // ignore: sort_child_properties_last
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(0.8),
                      shape: const StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (data) => true,
              onAccept: (data) {
                isAccepted = true;
                colorTarget = data;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: colorTarget,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ),
                      )
                    : const SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                          elevation: 0,
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
