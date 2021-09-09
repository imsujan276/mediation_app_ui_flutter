import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/VoiceModel.dart';
import 'package:meditation/app/modules/Authenticated/course/controllers/course_controller.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/routes/app_pages.dart';
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
        child: ListView.builder(
      itemCount: controller.maleVoiceList.length,
      itemBuilder: (context, index) {
        VoiceModel e = controller.maleVoiceList[index];
        return InkWell(
          onTap: () {
            controller.voiceIndex.value = index;
            Get.toNamed(Routes.MUSIC);
          },
          child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: Constants.defaultmargin,
                  horizontal: Constants.defaultmargin / 4),
              child: Row(children: [
                CircleAvatar(
                  radius: Constants.defaultRadus - 5,
                  backgroundColor: index == controller.voiceIndex.value
                      ? AppColors.primaryCOLOR
                      : AppColors.textLightColor,
                  child: CircleAvatar(
                    radius: Constants.defaultRadus - 7,
                    backgroundColor: index == controller.voiceIndex.value
                        ? AppColors.primaryCOLOR
                        : AppColors.WHITE,
                    child: Icon(Icons.play_arrow,
                        color: index != controller.voiceIndex.value
                            ? AppColors.textLightColor
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
                        color: AppColors.textLightColor,
                        isBold: true,
                      )
                    ],
                  ),
                )
              ])),
        );
      },
      shrinkWrap: true,
    ));
  }
}
