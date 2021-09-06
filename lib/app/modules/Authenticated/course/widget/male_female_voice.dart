import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/Authenticated/course/controllers/course_controller.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class MaleVoiceWIdget extends StatelessWidget {
  const MaleVoiceWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseController>();
    return Container(
      child: ListView(
          shrinkWrap: true,
          children: controller.maleVoiceList
              .map((e) => Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Constants.defaultmargin,
                      horizontal: Constants.defaultmargin / 4),
                  child: Row(children: [
                    CircleAvatar(
                      radius: Constants.defaultRadus - 5,
                      backgroundColor: e.isPlaying
                          ? AppColors.primaryCOLOR
                          : AppColors.pRIMARYCOLORLIGHT,
                      child: CircleAvatar(
                        radius: Constants.defaultRadus - 7,
                        backgroundColor: e.isPlaying
                            ? AppColors.primaryCOLOR
                            : AppColors.WHITE,
                        child: Icon(Icons.play_arrow,
                            color: !e.isPlaying
                                ? AppColors.primaryCOLOR
                                : AppColors.WHITE),
                      ),
                    ),
                    WidthWidget(.02),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderText(
                            e.title,
                            fontSize: appService.swidth * .05,
                            textColor: Get.isDarkMode
                                ? Theme.of(context).accentColor
                                : AppColors.textColor,
                          ),
                          NormalText(
                            e.duration,
                            fontSize: appService.swidth * .03,
                          )
                        ],
                      ),
                    )
                  ])))
              .toList()),
    );
  }
}
