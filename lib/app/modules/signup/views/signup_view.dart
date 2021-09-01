import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/modules/signin/widget/sign_in_up_widget.dart';
import 'package:meditation/app/modules/welcome/views/welcome_view.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/input/input_widget.dart';
import 'package:meditation/app/widgets/text/two_color_text.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding,
                vertical: Constants.defaultPadding),
            child: Column(
              children: [
                SignInSignUpTopWidget(title: Strings.createAccount),
                InputField(
                  hintText: Strings.username,
                  borderRadius: Constants.defaultRadus / 2,
                  suffix: Icons.check,
                  iconColor: AppColors.GREEN,
                ),
                InputField(
                  borderRadius: Constants.defaultRadus / 2,
                  color: Theme.of(context).accentColor,
                  hintText: Strings.email,
                  suffix: Icons.check,
                  iconColor: AppColors.GREEN,
                  textInputType: TextInputType.emailAddress,
                ),
                InputField(
                  hintText: Strings.password,
                  borderRadius: Constants.defaultRadus / 2,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TwoColorText(Strings.ihaveread, Strings.privacypolicy),
                      Checkbox(value: false, onChanged: (value) async {})
                    ],
                  ),
                ),
                HeightWidget(
                  .039,
                ),
                SizedBox(
                  height: appService.sheight * .06,
                  child: CustomRoundButton(
                    label: Strings.getstarted.toUpperCase(),
                    onPressed: () {
                      Get.to(WelcomeView());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
