import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double? width;
  final int? value;
  final int? totalValue;
  const ProgressBar({super.key, this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value! / totalValue!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.timer,
          color: Colors.black,
        ),
        const SizedBox(
          width: 5,
        ),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 4,
              child: AnimatedContainer(
                width: width! * ratio,
                height: 10,
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: (ratio < 0.3)
                      ? Colors.red
                      : (ratio < 0.6)
                          ? Colors.amber
                          : Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
