import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/day_model.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/routes/app_pages.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/topic_and_message.dart';

import '../controllers/remainder_controller.dart';

class RemainderView extends GetView<RemainderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Container(
            width: appService.swidth,
            height: appService.sheight,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeightWidget(.04),
                  TopicHeadAndMessage(
                    maintitle: Strings.medidateremindart,
                    subtitle: Strings.medidateremeindartitle,
                    message: Strings.recommendSchedule,
                    isSecondbold: true,
                  ),
                  Container(
                    height: appService.sheight * .26,
                    padding: EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding),
                    margin: EdgeInsets.only(top: Constants.defaultPadding),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Constants.defaultRadus),
                      color: AppColors.GREY.withOpacity(.2),
                    ),
                    child: TimePickerSpinner(
                      is24HourMode: false,
                      normalTextStyle:
                          TextStyle(fontSize: 24, color: AppColors.GREY),
                      highlightedTextStyle: TextStyle(
                          fontSize: 24,
                          color: Get.isDarkMode
                              ? Theme.of(context).accentColor
                              : AppColors.textColor),
                      spacing: 50,
                      itemHeight: appService.sheight * .07,
                      isForce2Digits: true,
                      onTimeChange: (time) {},
                    ),
                  ),
                  TopicHeadAndMessage(
                    maintitle: Strings.whichday,
                    subtitle: Strings.medidateremeindartitle,
                    message: Strings.everydayisbest,
                    isSecondbold: true,
                  ),
                  HeightWidget(.018),
                  Container(
                    width: appService.swidth,
                    height: appService.sheight * .07,
                    child: Obx(() => controller.selectedItems.value
                        ? WeekendList()
                        : WeekendList()),
                  ),
                  HeightWidget(.05),
                  SizedBox(
                    height: appService.sheight * .07,
                    child: CustomRoundButton(
                      label: Strings.save.toUpperCase(),
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      // backgroundColor: Theme.of(context).primaryColorLight,
                      textColor: AppColors.WHITE,
                    ),
                  ),
                  HeightWidget(.01),
                  Center(
                    child: NormalText(
                      Strings.nothanks,
                      isCentered: true,
                      color: Get.isDarkMode
                          ? Theme.of(context).accentColor
                          : AppColors.textColor,
                      isBold: true,
                    ),
                  ),
                  HeightWidget(.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WeekendList extends StatelessWidget {
  const WeekendList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RemainderController>();
    return ListView.builder(
      itemBuilder: (context, index) {
        Days e = controller.weekdaySelected[index];
        return InkWell(
          onTap: () {
            e.select = !e.select;
            controller.selectedItems.value = !controller.selectedItems.value;
          },
          child: Container(
            margin: EdgeInsets.all(Constants.defaultmargin / 2),
            child: CircleAvatar(
              radius: appService.swidth * .055,
              backgroundColor: e.select ? AppColors.textColor : AppColors.GREY,
              child: CircleAvatar(
                radius: appService.swidth * .054,
                backgroundColor:
                    e.select ? AppColors.textColor : AppColors.WHITE,
                child: NormalText(
                  e.day,
                  color: e.select ? AppColors.WHITE : AppColors.GREY,
                  fontSize: appService.swidth * .03,
                  isBold: true,
                ),
              ),
            ),
          ),
        );
      },
      itemCount: controller.weekdaySelected.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
