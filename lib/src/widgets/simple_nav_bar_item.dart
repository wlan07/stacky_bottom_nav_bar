import 'package:flutter/material.dart';
import 'package:stacky_bottom_nav_bar/src/inhereted_data.dart';
import 'package:stacky_bottom_nav_bar/src/stacky_bottom_nav_bar.dart';

class SimpleNavBarItem extends StatelessWidget {
  const SimpleNavBarItem({Key? key, required this.index}) : super(key: key);

  final int index;

  static const int _defaultLightUnselectedIconColor = 0xff000000;
  static const int _defaultDarkUnselectedIconColor = 0xffffffff;
  static const int _defaultselectedIconColor = 0xff97DBAE;

  @override
  Widget build(BuildContext context) {
    final MyInheritedData inheritedData = MyInheritedData.of(context);
    final model = inheritedData.simpleModelbyIndex(index);
    return GestureDetector(
      onTap: () => inheritedData.setselectedTabToIndex(index),
      child: SizedBox(
        height: StackyBottomNavBar.defaultHeigh * 0.8,
        child: ValueListenableBuilder(
          valueListenable: inheritedData.selectedTabNotifier,
          builder: (BuildContext context, int index, Widget? child) {
            return Icon(
              model.icon,
              color: Color(this.index == index 
                  ? model.selectedIconColor ?? _defaultselectedIconColor
                  : model.iconColor ??
                      (inheritedData.brightness == Brightness.light
                          ? _defaultLightUnselectedIconColor
                          : _defaultDarkUnselectedIconColor)),
            );
          },
        ),
      ),
    );
  }
}
