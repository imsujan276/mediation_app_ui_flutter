import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/modules/home/views/home_view.dart';
import 'package:meditation/app/modules/home/widget/tabItems.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  static int currentTab = 0;

  // list tabs here
  final List<TabItem> tabs = [];

// // sets current tab index
//   // and update state
//   void selectTab(int index) {
//     if (index == currentTab) {
//       // pop to first route
//       // if the user taps on the active tab
//       tabs[index].key.currentState.popUntil((route) => route.isFirst);
//     } else {
//       // update the state
//       // in order to repaint
//       setState(() => currentTab = index);
//     }
//   }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
