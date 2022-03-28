import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stacky_bottom_nav_bar/src/inhereted_data.dart';

class AnimatedNavBarItem extends StatelessWidget {
  const AnimatedNavBarItem(
      {Key? key,
      required this.animation,
      required this.originOffset,
      required this.index})
      : super(key: key);
  final int index;
  final Animation<double> animation;
  final Offset originOffset;

  static const int _defaultIconColor = 0xffffffff;

  @override
  Widget build(BuildContext context) {
    final MyInheritedData inheritedData = MyInheritedData.of(context);
    final model = inheritedData.animateModelbyIndex(index);
    return AnimatedBuilder(
      animation: animation,
      child: Container(
        decoration: BoxDecoration(
          color: Color(model.bgColor ??
              MyInheritedData.getDefaultAnimatedNavBarBgColor(index)),
          shape: BoxShape.circle,
        ),
        child: FadeTransition(
            opacity: animation,
            child: RotatedBox(
                quarterTurns: 2,
                child: Icon(model.icon,
                    color: Color(model.iconColor ?? _defaultIconColor)))),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: pi * animation.value,
          child: GestureDetector(
            onTap: animation.isCompleted
                ? () {
                    model.onTap();
                  }
                : (() => ""),
            child: child,
          ),
          origin: originOffset,
        );
      },
    );
  }
}
