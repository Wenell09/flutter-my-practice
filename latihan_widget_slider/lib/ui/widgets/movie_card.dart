import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:latihan_widget_slider/ui/styles/movie_style.dart';

class MovieCard extends StatelessWidget {
  final String? path;
  final double scale;
  const MovieCard({super.key, this.path, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: parentStyle.clone()
          ..width(200 * scale)
          ..height(300 * scale)
          ..background.image(path: path, fit: BoxFit.cover));
  }
}
