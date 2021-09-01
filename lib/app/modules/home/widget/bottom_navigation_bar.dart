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
    return Obx(() => BottomNavigationBar(
          currentIndex: controller.currentTab.value,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor:
              Get.isDarkMode ? AppColors.WHITE : AppColors.primaryCOLOR,
          unselectedItemColor: AppColors.unselectNavColor,
          backgroundColor:
              Get.isDarkMode ? Theme.of(context).primaryColor : AppColors.WHITE,
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
                            BorderRadius.circular(Constants.defaultRadus / 4)),
                    child: Icon(
                      Icons.home,
                      color: controller.currentTab.value == 0
                          ? AppColors.WHITE
                          : null,
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
                            BorderRadius.circular(Constants.defaultRadus / 4)),
                    child: Icon(
                      Icons.nightlight,
                      color: controller.currentTab.value == 1
                          ? AppColors.WHITE
                          : null,
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
                            BorderRadius.circular(Constants.defaultRadus / 4)),
                    child: Icon(
                      Icons.notifications,
                      color: controller.currentTab.value == 2
                          ? AppColors.WHITE
                          : null,
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
                            BorderRadius.circular(Constants.defaultRadus / 4)),
                    child: Icon(
                      Icons.headset,
                      color: controller.currentTab.value == 3
                          ? AppColors.WHITE
                          : null,
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
                            BorderRadius.circular(Constants.defaultRadus / 4)),
                    child: Icon(
                      Icons.person_outline,
                      color: controller.currentTab.value == 4
                          ? AppColors.WHITE
                          : null,
                    )))
          ],
          onTap: (int index) {
            controller.currentTab.value = index;
          },
        ));
  }
}
