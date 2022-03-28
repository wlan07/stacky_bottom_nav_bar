import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedMoreButtonIcon extends StatelessWidget {
  const AnimatedMoreButtonIcon({Key? key, required this.animation})
      : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return animation.value < 0.45
            ? Transform.rotate(
                angle: -pi * animation.value,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 45,
                ),
              )
            : Transform.rotate(
                angle: pi / 4,
                child: const Icon(
                  Icons.add,
                  color: Color(0xff44415C),
                  size: 45,
                ),
              );
      },
    );
  }
}
