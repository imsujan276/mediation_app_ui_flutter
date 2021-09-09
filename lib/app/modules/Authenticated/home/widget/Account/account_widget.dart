import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/text/two_color_text.dart';

class AccountWidgt extends StatelessWidget {
  const AccountWidgt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              width: appService.swidth,
              height: appService.sheight * .5,
              color: AppColors.softOrange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: Constants.defaultRadus * 2.7,
                        backgroundColor: AppColors.textColor,
                        child: CircleAvatar(
                          radius: Constants.defaultRadus * 2.6,
                          backgroundColor: AppColors.WHITE,
                          child: Icon(
                            Icons.account_box,
                            size: Constants.defaultRadus * 2.4,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 6,
                          right: 0,
                          child: CircleAvatar(
                            child: Icon(Icons.upload),
                          ))
                    ],
                  ),
                  HeightWidget(.01),
                  HeaderText(
                    'Profile Name',
                    textColor: AppColors.WHITE,
                  ),
                  HeightWidget(.01),
                  NormalText(
                    'Social media Login',
                    color: AppColors.WHITE,
                  )
                ],
              ),
            ),
            HeightWidget(.02),
            SizedBox(
              width: appService.swidth,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      "Settings",
                      textColor: AppColors.textColor,
                    ),
                    HeightWidget(.01),
                    Divider(),
                    Row(
                      children: [
                        NormalText(
                          'Remindar :',
                          isBold: true,
                          color: AppColors.textColor,
                        ),
                        WidthWidget(.02),
                        InkWell(
                          onTap: () {},
                          child: TwoColorText(
                            "8:30 PM",
                            'Change',
                            isBold: true,
                            fontSize1: Constants.defaultFontSize - 3,
                            isUnderline1: true,
                          ),
                        ),
                      ],
                    ),
                    HeightWidget(.02),
                    Divider(),
                    Row(
                      children: [
                        NormalText(
                          'Choose Topic :',
                          isBold: true,
                          color: AppColors.textColor,
                        ),
                        WidthWidget(.02),
                        InkWell(
                          onTap: () {},
                          child: TwoColorText(
                            "Reduce Stress",
                            'Change',
                            fontSize1: Constants.defaultFontSize - 3,
                            isUnderline1: true,
                            isBold: true,
                          ),
                        ),
                      ],
                    ),
                    HeightWidget(.02),
                    Divider(),
                  ],
                ),
              ),
            ),
            CustomRoundButton(label: 'LogOut', onPressed: () {})
          ],
        ));
  }
}
