import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc_colorchange/bloc/color_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc colorbloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                colorbloc.add(ToAmber());
              }),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                colorbloc.add(ToLightBlue());
              }),
        ],
      ),
      appBar: AppBar(
        title: const Text("BLoc change colors"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 100,
              height: 100,
              color: State,
            );
          },
        ),
      ),
    );
  }
}
