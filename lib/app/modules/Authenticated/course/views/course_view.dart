import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/Authenticated/course/widget/favirot_and_listening.dart';
import 'package:meditation/app/modules/Authenticated/course/widget/header_image_widge.dart';
import 'package:meditation/app/modules/Authenticated/course/widget/male_female_voice.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class CourseView extends StatefulWidget {
  @override
  _CourseViewState createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> with TickerProviderStateMixin {
  late TabController tabController;
  List<Widget> tabList = [
    NormalText(Strings.malevoice.toUpperCase()),
    NormalText(Strings.femalevoice.toUpperCase())
  ];
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImages(
              img: AppImage.sunbg,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HeaderText(
                      Strings.happyMoring,
                      textColor: Get.isDarkMode
                          ? Theme.of(context).accentColor
                          : AppColors.textColor,
                    ),
                    HeightWidget(.02),
                    NormalText(
                      Strings.course.toUpperCase(),
                      isBold: true,
                      fontSize: appService.sheight * .02,
                    ),
                    HeightWidget(.02),
                    NormalText(Strings.course_message),
                    HeightWidget(.03),
                    FavioritAndListening(),
                    HeightWidget(.03),
                    HeaderText(
                      Strings.narration,
                      fontSize: appService.sheight * .03,
                      textColor: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                    ),
                    HeightWidget(.01),
                    TabBar(
                        labelPadding: EdgeInsets.zero,
                        controller: tabController,
                        isScrollable: true,
                        indicatorWeight: 3.0,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2.0, color: AppColors.primaryCOLOR),
                          insets: EdgeInsets.symmetric(horizontal: 35.0),
                        ),
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500), //For Selected tab
                        unselectedLabelStyle: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                            fontWeight:
                                FontWeight.normal), //For Un-selected Tabs
                        tabs: [
                          Container(
                              margin: EdgeInsets.only(
                                  right: Constants.defaultmargin * 2),
                              child: NormalText(
                                Strings.malevoice.toUpperCase(),
                              )),
                          NormalText(
                            Strings.femalevoice.toUpperCase(),
                          )
                        ]),
                    Expanded(
                        child: TabBarView(controller: tabController, children: [
                      MaleVoiceWIdget(),
                      MaleVoiceWIdget(),
                    ]))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
