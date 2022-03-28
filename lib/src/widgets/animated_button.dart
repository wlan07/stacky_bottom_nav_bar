import 'package:flutter/material.dart';
import 'package:stacky_bottom_nav_bar/src/inhereted_data.dart';
import 'package:stacky_bottom_nav_bar/src/stacky_bottom_nav_bar.dart';
import 'package:stacky_bottom_nav_bar/src/widgets/animated_more_button_icon.dart';
import 'package:stacky_bottom_nav_bar/src/widgets/animated_nav_bar_item.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({Key? key}) : super(key: key);

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  static const List<Offset> _origins = [
    Offset(-StackyBottomNavBar.defaultHeigh * 0.6,
        -StackyBottomNavBar.defaultHeigh * 0.6),
    Offset(0.0, -StackyBottomNavBar.defaultHeigh + 5.0),
    Offset(StackyBottomNavBar.defaultHeigh * 0.6,
        -StackyBottomNavBar.defaultHeigh * 0.6 + 10.0),
  ];

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(milliseconds: 500));

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(0.0, -1.5),
                      blurRadius: 1.5)
                ],
                color: MyInheritedData.of(context).getBgColor(),
              ),
              width: StackyBottomNavBar.defaultHeigh * 1.2,
              height: StackyBottomNavBar.defaultHeigh * 1.2,
            )),
        ...List.generate(
            3,
            (index) => Positioned(
                  bottom: 5.0 * index,
                  left: 0.0,
                  right: 0.0,
                  height: StackyBottomNavBar.defaultHeigh,
                  child: AnimatedNavBarItem(
                    index: index,
                    originOffset: _origins[index],
                    animation: CurvedAnimation(
                      parent: animationController,
                      curve: Curves.elasticOut,
                      reverseCurve: Curves.fastOutSlowIn,
                    ),
                  ),
                )),
        Positioned(
            bottom: 0.0,
            width: StackyBottomNavBar.defaultHeigh * 1.2,
            height: StackyBottomNavBar.defaultHeigh * 1.2,
            child: GestureDetector(
              onTap: _onMoreButtonTaped,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child:
                    AnimatedMoreButtonIcon(animation: animationController.view),
              ),
            ))
      ],
    );
  }

  void _onMoreButtonTaped() {
    if (!animationController.isAnimating) {
      if (animationController.isCompleted) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
    }
  }
}
