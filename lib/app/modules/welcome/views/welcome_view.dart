import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/splash/widget/logo_header_with_text.dart';
import 'package:meditation/app/modules/topic/views/topic_view.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: appService.sheight * .11,
                child: Image.asset(
                  AppImage.welcome_medition_bg,
                  width: appService.swidth,
                  fit: BoxFit.fitWidth,
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  color: AppColors.welcomebackgroundColor,
                  height: appService.sheight * .12,
                  width: appService.swidth,
                )),
            Positioned(
              bottom: appService.sheight * .05,
              child: SizedBox(
                height: appService.sheight * .07,
                child: CustomRoundButton(
                  label: Strings.getstarted.toUpperCase(),
                  onPressed: () {
                    Get.to(() => TopicView());
                  },
                  backgroundColor: AppColors.WHITE,
                  textColor: AppColors.textColor,
                ),
              ),
            ),
            Column(
              children: [
                HeightWidget(h: .03),
                LogoTopHeader(
                  image: AppImage.appIconbg,
                  textColor: AppColors.WHITE,
                ),
                HeightWidget(h: .07),
                HeaderText(
                  Strings.welcomeGreet,
                  textColor: AppColors.WHITE,
                ),
                HeightWidget(h: .01),
                HeaderText(Strings.toSlinemood, textColor: AppColors.WHITE),
                HeightWidget(h: .04),
                NormalText(
                  Strings.prepareMeditationMessage,
                  color: AppColors.WHITE,
                  isCentered: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
