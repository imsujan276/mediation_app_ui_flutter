import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/repositories/course_data_repositories.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/bottom_navigation_bar.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/course_widget_items.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/recommended.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/strip_ads_banner.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/splash/widget/logo_header_with_text.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/topic_and_message.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool val = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: NormalText('Warning'),
                content:
                    NormalText('Are you sure! do you want to close this app?'),
                actions: [
                  CustomRoundButton(
                    label: 'Cancel',
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    backgroundColor: AppColors.RED,
                  ),
                  HeightWidget(.01),
                  CustomRoundButton(
                    label: 'Yes',
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    backgroundColor: AppColors.GREEN,
                  ),
                ],
              );
            });

        return val;
      },
      child: Scaffold(
          backgroundColor:
              Get.isDarkMode ? Theme.of(context).primaryColor : null,
          body: Obx(() => controller.bodyWidget[controller.currentTab.value]),
          bottomNavigationBar: BottomNavigation()),
    );
  }
}

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    appService.sizeinit(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeightWidget(.08),
        LogoTopHeader(),
        TopicHeadAndMessage(
          maintitle: Strings.goodmorning + ',Asfar',
          subtitle: '',
          message: Strings.wewishyougoodDay,
        ),
        HeightWidget(.01),
        Container(
          width: appService.swidth,
          height: appService.sheight * .32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: courses.map((e) => CourseWidget(e: e)).toList(),
          ),
        ),
        StripBannerWidget(
          backgroundImage: AppImage.striptwo,
          buttonColor: AppColors.WHITE,
          iconColor: AppColors.stripbackground,
          info: '3-10 Min',
          subtitle: Strings.meditation,
          title: Strings.dailythought,
          textColor: AppColors.WHITE,
        ),
        HeightWidget(.03),
        RecommendedWidget()
      ],
    );
  }
}
