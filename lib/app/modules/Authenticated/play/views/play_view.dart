import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/Authenticated/course/widget/favirot_and_listening.dart';
import 'package:meditation/app/modules/Authenticated/course/widget/header_image_widge.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/routes/app_pages.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/play_controller.dart';

class PlayView extends GetView<PlayController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImages(img: AppImage.nightCloud),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      'Night Island',
                      textColor: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                    ),
                    HeightWidget(.015),
                    NormalText(
                      '45 MIN . Sleep Music'.toUpperCase(),
                      fontSize: appService.sheight * .02,
                      isBold: true,
                    ),
                    HeightWidget(.015),
                    NormalText(Strings.course_message),
                    HeightWidget(.03),
                    FavioritAndListening(),
                    Divider(
                      color: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.BLACK.withOpacity(.5),
                    ),
                    HeightWidget(.02),
                    HeaderText(
                      'Related',
                      fontSize: appService.sheight * .03,
                      textColor: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                    ),
                    HeightWidget(.01),
                    Expanded(
                        child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        RelatedListItems(),
                        RelatedListItems(),
                        RelatedListItems()
                      ],
                    )),
                    CustomRoundButton(
                      label: 'Play'.toUpperCase(),
                      onPressed: () {
                        Get.toNamed(Routes.MUSIC);
                      },
                      textColor: AppColors.WHITE,
                      backgroundColor: AppColors.buttonBackgroundColor,
                    )
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

class RelatedListItems extends StatelessWidget {
  const RelatedListItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Constants.defaultmargin / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.defaultRadus)),
      child: InkWell(
        onTap: () {
          Get.to(() => PlayView());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Constants.defaultRadus / 2),
                child: Image.asset(
                  AppImage.nightMoon,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              width: appService.swidth * .4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                    'Moon Cloud'.toUpperCase(),
                    color:
                        !Get.isDarkMode ? AppColors.textColor : AppColors.WHITE,
                  ),
                  HeightWidget(.001),
                  NormalText(
                    '45 MIN .SLEEP MUSIC'.toUpperCase(),
                    color: !Get.isDarkMode
                        ? AppColors.textColor.withOpacity(.8)
                        : AppColors.WHITE.withOpacity(.8),
                    fontSize: Constants.defaultFontSize - 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
