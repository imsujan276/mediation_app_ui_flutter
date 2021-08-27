import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/course_model.dart';
import 'package:meditation/app/data/repositories/course_data_repositories.dart';
import 'package:meditation/app/modules/home/widget/bottom_navigation_bar.dart';
import 'package:meditation/app/modules/home/widget/course_widget_items.dart';
import 'package:meditation/app/modules/home/widget/strip_ads_banner.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/splash/widget/logo_header_with_text.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/topic_and_message.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightWidget(h: .02),
                LogoTopHeader(),
                TopicHeadAndMessage(
                  maintitle: Strings.goodmorning + ',Asfar',
                  subtitle: '',
                  message: Strings.wewishyougoodDay,
                ),
                HeightWidget(h: .01),
                Container(
                  width: appService.swidth,
                  height: appService.sheight * .34,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: courses.map((e) => CourseWidget(e: e)).toList(),
                  ),
                ),
                StripBannerWidget(),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar:  BottomNavigation(
      //     onSelectTab: selectTab,
      //     tabs: tabs,
      //   ),,
    );
  }
}
