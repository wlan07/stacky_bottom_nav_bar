import 'package:flutter/cupertino.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_animated_nav_bar_item.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_simple_nav_bar_item.dart';

class StackyBottomNavBarParams {
  final List<StackySimpleNavBarItem> simpleNavBarItems;
  final List<StackyAnimatedNavBarItem> animatedNavBarItems;
  final Brightness brightness;
  final int? bgColor;
  final int currentSelectedTabIndex;
  StackyBottomNavBarParams({
    this.bgColor,
    required this.simpleNavBarItems,
    required this.animatedNavBarItems,
    this.brightness = Brightness.light,
    this.currentSelectedTabIndex = 0,
  })  : assert(
          simpleNavBarItems.length == 2,
          "simpleNavBarItems's length must be fixed to 2",
        ),
        assert(animatedNavBarItems.length == 3,
            "animatedNavBarItems's length must be fixed to 3"),
        assert(currentSelectedTabIndex == 0 || currentSelectedTabIndex == 1,
            "currentSelectedTabIndex must be 0 or 1");
}
