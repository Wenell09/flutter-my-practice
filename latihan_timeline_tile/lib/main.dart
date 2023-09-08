import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan timeline"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            SizedBox(
              width: 300,
              height: 60,
              child: TimelineTile(
                  isFirst: true,
                  afterLineStyle: const LineStyle(color: Colors.green),
                  indicatorStyle: const IndicatorStyle(
                      color: Colors.green,
                      width: 15,
                      padding: EdgeInsets.only(bottom: 8)),
                  endChild: const Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.green,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ORDER CONFIRM",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Order anda sudah masuk",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TimelineTile(
                  afterLineStyle: const LineStyle(color: Colors.blue),
                  beforeLineStyle: const LineStyle(color: Colors.green),
                  indicatorStyle: const IndicatorStyle(
                      color: Colors.blue,
                      width: 15,
                      padding: EdgeInsets.only(bottom: 8, top: 8)),
                  endChild: const Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.motorcycle_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ORDER PROSES",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Order anda sedang dikirim ke alamat tujuan",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TimelineTile(
                  isLast: true,
                  beforeLineStyle: const LineStyle(color: Colors.blue),
                  indicatorStyle: const IndicatorStyle(
                      color: Colors.red,
                      width: 15,
                      padding: EdgeInsets.only(bottom: 8, top: 8)),
                  endChild: const Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.handshake,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ORDER TAKE",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Order sudah diterima oleh pembeli",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
