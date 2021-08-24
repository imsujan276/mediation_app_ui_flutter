import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: appService.sheight * .029,
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: Constants.defaultRadus,
                    backgroundColor: AppColors.borderColor,
                    child: CircleAvatar(
                      radius: Constants.defaultRadus - 3,
                      backgroundColor: AppColors.WHITE,
                      child: BackButton(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: appService.sheight * .039,
              ),
              Expanded(
                flex: 2,
                child: HeaderText(
                  Strings.welcomeBack,
                  isBold: true,
                  isCentered: true,
                ),
              ),
              Expanded(
                flex: 2,
                child: ButtonWithImage(
                  Strings.continuewithfacebook.toUpperCase(),
                  imageString: AppImage.facebook,
                  color: Theme.of(context).primaryColorLight,
                  onTap: () {},
                  isCentered: true,
                  vertical: Constants.defaultmargin,
                  horizontal: Constants.defaultmargin,
                ),
              ),
              SizedBox(height: appService.sheight * .03),
              Expanded(
                flex: 2,
                child: ButtonWithImage(
                  Strings.continuewithfacebook.toUpperCase(),
                  imageString: AppImage.google,
                  borderColor: AppColors.borderColor,
                  onTap: () {},
                  textColor: AppColors.textColor,
                  isCentered: true,
                  vertical: Constants.defaultmargin,
                  horizontal: Constants.defaultmargin,
                ),
              ),
              SizedBox(height: appService.sheight * .05),
              Expanded(
                flex: 3,
                child: HeaderText(
                  Strings.orloginwithemail.toUpperCase(),
                  fontSize: Constants.defaultFontSize,
                ),
              ),
              // SizedBox(height: appService.sheight * .05),
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
              SizedBox(height: appService.sheight * .02),
              Expanded(
                flex: 2,
                child: CustomRoundButton(
                  label: Strings.signin.toUpperCase(),
                  onPressed: () {},
                ),
              ),

              SizedBox(height: appService.sheight * .02),
              Expanded(flex: 3, child: NormalText(Strings.forgetpassword)),
              //  SizedBox(height: appService.sheight * .05),
              Expanded(
                  flex: 1,
                  child: TwoColorText(Strings.alreadyAccount, Strings.signup))
            ],
          ),
        ),
      ),
    );
  }
}
