import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/button/custome_button.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';

///Sign in and Sing up form top part for facebook and google login register
class SignInSignUpTopWidget extends StatelessWidget {
  final String title;
  const SignInSignUpTopWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
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
          HeightWidget(
            .069,
          ),
          HeaderText(
            title,
            isBold: true,
            isCentered: true,
            textColor: Get.isDarkMode
                ? Theme.of(context).accentColor
                : AppColors.textColor,
          ),
          HeightWidget(
            .019,
          ),
          ButtonWithImage(
            Strings.continuewithfacebook.toUpperCase(),
            imageString: AppImage.facebook,
            color: AppColors.fbColor,
            onTap: () {},
            isCentered: true,
            // vertical: Constants.defaultmargin,
            // horizontal: Constants.defaultmargin,
          ),
          HeightWidget(
            .019,
          ),
          ButtonWithImage(
            Strings.continuewithfacebook.toUpperCase(),
            imageString: AppImage.google,
            borderColor: AppColors.borderColor,
            onTap: () {},
            textColor: Get.isDarkMode
                ? Theme.of(context).accentColor
                : AppColors.textColor,
            isCentered: true,
            // vertical: Constants.defaultmargin,
            // horizontal: Constants.defaultmargin,
          ),
          HeightWidget(
            .07,
          ),
          HeaderText(
            Strings.orloginwithemail.toUpperCase(),
            fontSize: Constants.defaultFontSize,
            textColor: Get.isDarkMode
                ? Theme.of(context).accentColor
                : AppColors.textLightColor,
          ),
          HeightWidget(
            .03,
          ),
        ],
      ),
    );
  }
}
