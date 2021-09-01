import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/views/signin_view.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/signup/views/signup_view.dart';
import 'package:meditation/app/modules/splash/widget/logo_header_with_text.dart';
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
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        flex: 3,
                        child: LogoTopHeader(),
                      ),
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding:
                              const EdgeInsets.all(Constants.defaultPadding),
                          child: Image.asset(
                            AppImage.ladyonChair,
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
                    HeaderText(
                      Strings.wearewhatwedo,
                      textColor: AppColors.textLightColor,
                    ),
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
                        Get.to(SignupView());
                      },
                      // backgroundColor: Theme.of(context).primaryColor,
                      // textColor: AppColors.WHITE,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SigninView());
                      },
                      child: TwoColorText(
                        Strings.alreadyAccount,
                        Strings.signin.toUpperCase(),
                        isBold1: true,
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
