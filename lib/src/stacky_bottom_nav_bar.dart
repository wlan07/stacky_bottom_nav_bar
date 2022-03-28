import 'package:flutter/material.dart';
import 'package:stacky_bottom_nav_bar/src/inhereted_data.dart';
import 'package:stacky_bottom_nav_bar/src/models/stacky_bottom_nav_bar_params.dart';
import 'package:stacky_bottom_nav_bar/src/widgets/animated_button.dart';
import 'package:stacky_bottom_nav_bar/src/widgets/simple_nav_bar_item.dart';

class StackyBottomNavBar extends StatefulWidget {
  const StackyBottomNavBar({
    Key? key,
    required this.params,
  }) : super(key: key);

  final StackyBottomNavBarParams params;

  static const double defaultHeigh = 85.0;
  static const int defaultBgColor = 0xffffffff;

  @override
  State<StackyBottomNavBar> createState() => _StackyBottomNavBarState();
}

class _StackyBottomNavBarState extends State<StackyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return MyInheritedData(
      params: widget.params,
      selectedTabNotifier:
          ValueNotifier<int>(widget.params.currentSelectedTabIndex),
      child: Builder(builder: (context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: StackyBottomNavBar.defaultHeigh * 3,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                height: StackyBottomNavBar.defaultHeigh,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyInheritedData.of(context).getBgColor(),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Spacer(),
                    Expanded(
                        flex: 2,
                        child: SimpleNavBarItem(
                          index: 0,
                        )),
                    SizedBox(
                      width: StackyBottomNavBar.defaultHeigh * 2,
                    ),
                    Expanded(
                        flex: 2,
                        child: SimpleNavBarItem(
                          index: 1,
                        )),
                    Spacer()
                  ],
                ),
              ),
              Transform.translate(
                  offset: const Offset(.0, -StackyBottomNavBar.defaultHeigh * .2),
                  child: const AnimatedButton())
            ]),
          ),
        );
      }),
    );
  }
}
