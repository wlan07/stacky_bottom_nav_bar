import 'package:flutter/material.dart';

class StackySimpleNavBarItem {
  final IconData icon;
  final VoidCallback onTap;
  final int? iconColor;
  final int? selectedIconColor;

  const StackySimpleNavBarItem(
      {required this.icon,
      required this.onTap,
      this.iconColor,
      this.selectedIconColor});
}
