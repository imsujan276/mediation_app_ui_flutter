import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/modules/home/controllers/home_controller.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return BottomNavigationBar(
      currentIndex: controller.currentTab.value,
      selectedItemColor: AppColors.primaryCOLOR,
      unselectedItemColor: AppColors.unselectNavColor,
      backgroundColor: AppColors.WHITE,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Container(
                padding: EdgeInsets.all(Constants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: controller.currentTab.value == 0
                        ? AppColors.primaryCOLOR
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Icon(
                  Icons.home,
                  color:
                      controller.currentTab.value == 0 ? AppColors.WHITE : null,
                ))),
        BottomNavigationBarItem(
            label: 'Sleep',
            icon: Container(
                padding: EdgeInsets.all(Constants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: controller.currentTab.value == 1
                        ? AppColors.primaryCOLOR
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Icon(
                  Icons.nightlight,
                  color:
                      controller.currentTab.value == 1 ? AppColors.WHITE : null,
                ))),
        BottomNavigationBarItem(
            label: 'Meditation',
            icon: Container(
                padding: EdgeInsets.all(Constants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: controller.currentTab.value == 2
                        ? AppColors.primaryCOLOR
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Icon(
                  Icons.notifications,
                  color:
                      controller.currentTab.value == 2 ? AppColors.WHITE : null,
                ))),
        BottomNavigationBarItem(
            label: 'Music',
            icon: Container(
                padding: EdgeInsets.all(Constants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: controller.currentTab.value == 3
                        ? AppColors.primaryCOLOR
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Icon(
                  Icons.headset,
                  color:
                      controller.currentTab.value == 3 ? AppColors.WHITE : null,
                ))),
        BottomNavigationBarItem(
            label: 'Account',
            icon: Container(
                padding: EdgeInsets.all(Constants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: controller.currentTab.value == 4
                        ? AppColors.primaryCOLOR
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Icon(
                  Icons.person_outline,
                  color:
                      controller.currentTab.value == 4 ? AppColors.WHITE : null,
                )))
      ],
      onTap: (int index) {
        controller.currentTab.value = index;
      },
    );
  }
}
