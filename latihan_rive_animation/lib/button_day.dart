import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class ButtonDay extends StatefulWidget {
  const ButtonDay({super.key});

  @override
  State<ButtonDay> createState() => _ButtonDayState();
}

class _ButtonDayState extends State<ButtonDay> {
  // 0 = night idle
  // 1 = switch day
  // 2 = day idle
  // 3 = switch night
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: GestureDetector(
          onTap: () {
            if (state == 0) {
              setState(() {
                state = 1;
              });
            } else if (state == 2) {
              setState(() {
                state = 3;
              });
            }
          },
          child: FlareActor(
            "assets/switch_daytime.flr",
            animation: (state == 0)
                ? "night_idle"
                : (state == 1)
                    ? "switch_day"
                    : (state == 2)
                        ? "day_idle"
                        : "switch_night",
            callback: (name) {
              if (name == "switch_day") {
                setState(() {
                  state = 2;
                });
              } else if (name == "switch_night") {
                setState(() {
                  state = 0;
                });
              }
            },
          ),
        ));
  }
}
