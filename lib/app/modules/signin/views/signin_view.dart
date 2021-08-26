import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/signin/widget/sign_in_up_widget.dart';
import 'package:meditation/app/modules/signup/views/signup_view.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/button/custome_button.dart';
import 'package:meditation/app/widgets/input/input_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/text/two_color_text.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  h: .039,
                ),
                SizedBox(
                  height: appService.sheight * .06,
                  child: CustomRoundButton(
                    label: Strings.signin.toUpperCase(),
                    onPressed: () {
                      Get.to(SigninView());
                    },
                  ),
                ),
                HeightWidget(
                  h: .01,
                ),
                NormalText(Strings.forgetpassword),
                HeightWidget(
                  h: .07,
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => SignupView());
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
