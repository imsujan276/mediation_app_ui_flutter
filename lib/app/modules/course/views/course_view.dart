import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/repositories/male_voice_repositories.dart';
import 'package:meditation/app/modules/course/widget/favirot_and_listening.dart';
import 'package:meditation/app/modules/course/widget/header_image_widge.dart';
import 'package:meditation/app/modules/course/widget/male_female_voice.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/course_controller.dart';

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImages(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      Strings.happyMoring,
                      textColor: AppColors.textColor,
                    ),
                    HeightWidget(h: .01),
                    NormalText(
                      Strings.course.toUpperCase(),
                      fontSize: appService.sheight * .02,
                    ),
                    HeightWidget(h: .01),
                    NormalText(Strings.course_message),
                    HeightWidget(h: .03),
                    FavioritAndListening(),
                    HeightWidget(h: .03),
                    HeaderText(
                      Strings.narration,
                      fontSize: appService.sheight * .03,
                      textColor: AppColors.textColor,
                    ),
                    HeightWidget(h: .01),
                    TabBar(
                        controller: tabController,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        unselectedLabelColor: AppColors.pRIMARYCOLORLIGHT,
                        labelColor: AppColors.primaryCOLOR,
                        tabs: [
                          NormalText(Strings.malevoice.toUpperCase()),
                          NormalText(Strings.femalevoice.toUpperCase())
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
