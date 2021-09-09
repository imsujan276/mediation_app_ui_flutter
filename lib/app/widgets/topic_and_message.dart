import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

///It display three type of text main text and subtext and message
class TopicHeadAndMessage extends StatelessWidget {
  const TopicHeadAndMessage({
    Key? key,
    required this.maintitle,
    required this.subtitle,
    required this.message,
    this.isSecondbold = false,
  }) : super(key: key);
  final String maintitle;
  final String subtitle;
  final String message;
  final bool isSecondbold;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightWidget(.04),
          HeaderText(
            maintitle,
            textColor: Get.isDarkMode
                ? Theme.of(context).accentColor
                : AppColors.textColor,
          ),
          if (subtitle.isNotEmpty)
            HeaderText(
              subtitle,
              isBold: isSecondbold,
              fontSize: Constants.defaultFontSize * 1.4,
              textColor: Get.isDarkMode
                  ? Theme.of(context).accentColor
                  : AppColors.textColor,
            ),
          HeightWidget(.01),
          NormalText(
            message,
            color: AppColors.textLightColor,
          ),
          HeightWidget(.02),
        ]);
  }
}
