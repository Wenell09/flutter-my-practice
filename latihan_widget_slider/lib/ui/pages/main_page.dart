import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_widget_slider/ui/widgets/movie_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPage = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> path = [
      "lib/ui/images/america.jpeg",
      "lib/ui/images/endgame.jpg",
      "lib/ui/images/guardian.jpeg",
      "lib/ui/images/infinity.jpeg",
      "lib/ui/images/spiderman.jpeg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget slider with division"),
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: path.length,
          itemBuilder: (context, index) {
            double difference = index - currentPage;
            (difference < 0) ? difference *= -1 : null;
            difference = min(1, difference);
            return Center(
              child:
                  MovieCard(path: path[index], scale: 1 - (difference * 0.3)),
            );
          }),
    );
  }
}
