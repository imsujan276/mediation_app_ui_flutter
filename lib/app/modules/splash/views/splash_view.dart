import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/splash/widget/logo_header_with_text.dart';
import 'package:meditation/app/routes/app_pages.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/clipper/clipper_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/text/two_color_text.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    appService.sizeinit(context);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        appService.sheight = constraints.maxHeight;
        appService.swidth = constraints.maxWidth;
        if (constraints.maxWidth > 375)
          appService.islandscape.value = true;
        else
          appService.islandscape.value = false;
        //tablet design size 690,360
        //mobile 360,690

        return Scaffold(
          body: Body(),
        );
      });
    });
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    appService.sizeinit(context);
    return SafeArea(
      child: Container(
        color: Get.isDarkMode ? Theme.of(context).primaryColor : null,
        width: appService.swidth,
        height: appService.sheight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: AppColors.backgroundofWaveClipPath,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: appService.sheight * .03,
                      ),
                      Expanded(
                        flex: appService.islandscape.value ? 1 : 3,
                        child: LogoTopHeader(),
                      ),
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding:
                              const EdgeInsets.all(Constants.defaultPadding),
                          child: Image.asset(
                            AppImage.ladyonChair,
                            width: appService.islandscape.value
                                ? appService.sheight * .7
                                : appService.swidth * .7,
                            height: appService.sheight * .3,
                            fit: appService.islandscape.value
                                ? BoxFit.fitHeight
                                : BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      if (!appService.islandscape.value)
                        Image.asset(
                          AppImage.wave,
                          fit: BoxFit.fitWidth,
                        ),
                      HeightWidget(.01)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HeaderText(Strings.wearewhatwedo,
                        textColor: AppColors.textColor),
                    //Get.isDarkMode ? Theme.of(context).accentColor : null
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Constants.defaultPadding * 2),
                      child: NormalText(
                        Strings.thousandMessage,
                        isCentered: true,
                      ),
                    ),
                    CustomRoundButton(
                      label: Strings.signup.toUpperCase(),
                      onPressed: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      // backgroundColor: Theme.of(context).primaryColor,
                      // textColor: AppColors.WHITE,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SIGNIN);
                      },
                      child: TwoColorText(
                        Strings.alreadyAccount.toUpperCase(),
                        Strings.signin.toUpperCase(),
                        isBold1: true,
                        fontSize: appService.sheight * .02,
                        fontSize1: appService.sheight * .02,
                      ),
                    ),
                    HeightWidget(.01)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
