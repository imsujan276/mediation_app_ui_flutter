import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/home/bindings/home_binding.dart';
import 'package:meditation/app/modules/home/views/home_view.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/topic_and_message.dart';

import '../controllers/remainder_controller.dart';

class RemainderView extends GetView<RemainderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopicHeadAndMessage(
                maintitle: Strings.medidateremindart,
                subtitle: Strings.medidateremeindartitle,
                message: Strings.recommendSchedule,
                isSecondbold: true,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Constants.defaultPadding),
                  // margin: EdgeInsets.all(Constants.defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Constants.defaultRadus),
                    color: AppColors.GREY.withOpacity(.2),
                  ),
                  child: TimePickerSpinner(
                    is24HourMode: false,
                    normalTextStyle:
                        TextStyle(fontSize: 24, color: AppColors.GREY),
                    highlightedTextStyle:
                        TextStyle(fontSize: 24, color: AppColors.textColor),
                    spacing: 50,
                    itemHeight: appService.sheight * .07,
                    isForce2Digits: true,
                    onTimeChange: (time) {},
                  ),
                ),
              ),
              TopicHeadAndMessage(
                maintitle: Strings.whichday,
                subtitle: Strings.medidateremeindartitle,
                message: Strings.everydayisbest,
                isSecondbold: true,
              ),
              HeightWidget(.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: controller.weekdaySelected
                    .map((e) => CircleAvatar(
                          radius: appService.swidth * .055,
                          backgroundColor:
                              e.select ? AppColors.textColor : AppColors.GREY,
                          child: CircleAvatar(
                            radius: appService.swidth * .054,
                            backgroundColor: e.select
                                ? AppColors.textColor
                                : AppColors.WHITE,
                            child: NormalText(
                              e.day,
                              color:
                                  e.select ? AppColors.WHITE : AppColors.GREY,
                              fontSize: appService.swidth * .03,
                              isBold: true,
                            ),
                          ),
                        ))
                    .toList(),
              ),
              HeightWidget(.05),
              SizedBox(
                height: appService.sheight * .07,
                child: CustomRoundButton(
                  label: Strings.save.toUpperCase(),
                  onPressed: () {
                    Get.to(() => HomeView(), binding: HomeBinding());
                  },
                  backgroundColor: Theme.of(context).primaryColorLight,
                  textColor: AppColors.WHITE,
                ),
              ),
              HeightWidget(.01),
              Center(
                child: NormalText(
                  Strings.nothanks,
                  isCentered: true,
                  color: AppColors.textColor,
                  isBold: true,
                ),
              ),
              HeightWidget(.02),
            ],
          ),
        ),
      ),
    );
  }
}
