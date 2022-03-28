import 'package:flutter/material.dart';

class StackyAnimatedNavBarItem {
  final IconData icon;
  final VoidCallback onTap;
  final int? iconColor;
  final int? bgColor;

  const StackyAnimatedNavBarItem(
      {required this.icon, required this.onTap, this.iconColor, this.bgColor});
}
