import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/core/middleware/middleware_authentication.dart';
import 'package:meditation/app/modules/Authenticated/home/bindings/home_binding.dart';
import 'package:meditation/app/modules/Authenticated/home/views/home_view.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/registration/signin/widget/sign_in_up_widget.dart';
import 'package:meditation/app/routes/app_pages.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/input/input_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/text/two_color_text.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      body: SafeArea(
        child: Container(
          width: appService.swidth,
          height: appService.sheight,
          padding: const EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding,
              vertical: Constants.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignInSignUpTopWidget(
                  title: Strings.welcomeBack,
                ),

                InputField(
                  borderRadius: Constants.defaultRadus / 2,
                  color: Theme.of(context).accentColor,
                  hintText: Strings.email,
                  textInputType: TextInputType.emailAddress,
                ),
                InputField(
                  borderRadius: Constants.defaultRadus / 2,
                  color: Theme.of(context).primaryColor,
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  hintText: Strings.password,
                ),
                HeightWidget(
                  .039,
                ),
                CustomRoundButton(
                  label: Strings.signin.toUpperCase(),
                  onPressed: () {
                    // AuthMiddelware.instance.isAuthenticated = true;
                    // Get.to(HomeView()());
                    Get.offAll(HomeView(), binding: HomeBinding());
                  },
                ),
                HeightWidget(
                  .01,
                ),
                NormalText(
                  Strings.forgetpassword,
                  color: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                ),
                HeightWidget(
                  .07,
                ),
                InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SIGNUP);
                    },
                    child: TwoColorText(
                      Strings.alreadyAccount,
                      Strings.signup,
                    ))

                // SizedBox(height: appService.sheight * .05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
