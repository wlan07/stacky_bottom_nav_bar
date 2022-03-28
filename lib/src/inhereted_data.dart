import 'package:flutter/material.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_animated_nav_bar_item.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_bottom_nav_bar_params.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_simple_nav_bar_item.dart';

class MyInheritedData extends InheritedWidget {
  final StackyBottomNavBarParams params;

  final ValueNotifier<int> selectedTabNotifier;

  const MyInheritedData(
      {Key? key,
      required this.selectedTabNotifier,
      required Widget child,
      required this.params})
      : super(key: key, child: child);

  static MyInheritedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedData>()!;
  }

  /// return [StackyAnimatedNavBarItem] by the given index
  /// [index] is in the range 0-->2
  StackyAnimatedNavBarItem animateModelbyIndex(int index) {
    return params.animatedNavBarItems[index];
  }

  /// return [StackySimpleNavBarItem] by the given index
  /// [index] is in the range 0-->1
  StackySimpleNavBarItem simpleModelbyIndex(int index) {
    return params.simpleNavBarItems[index];
  }

  void setselectedTabToIndex(int index) {
    params.simpleNavBarItems[index].onTap();
    selectedTabNotifier.value = index;
  }

  bool isSelected(int index) {
    return selectedTabNotifier.value == index;
  }

  /// return [StackySimpleNavBarItem]'s bgColor by the given index

  Brightness get brightness {
    return params.brightness;
  }

  @override
  bool updateShouldNotify(MyInheritedData oldWidget) {
    return false;
  }

  static int getDefaultAnimatedNavBarBgColor(int index) {
    switch (index) {
      case 0:
        return 0xffFF8182;
      case 1:
        return 0xffC641FF;
      default:
        return 0xff631AEE;
    }
  }

  Color getBgColor() {
    if (params.bgColor != null) {
      return Color(params.bgColor!);
    } else {
      if (params.brightness == Brightness.dark) {
        return const Color(0xff171010);
      }
      return const Color(0xffffffff);
    }
  }
}
