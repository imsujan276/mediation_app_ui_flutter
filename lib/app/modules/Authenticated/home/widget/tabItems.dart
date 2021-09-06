import 'package:flutter/material.dart';

class TabItem {
  // you can customize what kind of information is needed
  // for each tab
  final String tabName;
  final IconData icon;
  // final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  int index = 0;
  final Color selectIconColor;
  final Color unSelectColor;
  final Color background;

  TabItem({
    required this.selectIconColor,
    required this.unSelectColor,
    required this.background,
    required this.tabName,
    required this.icon,
  });
}
