import 'package:flutter/material.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

///It is used to display Strip ads size banner widget in home page
class StripBannerWidget extends StatelessWidget {
  const StripBannerWidget({
    Key? key,
    required this.backgroundImage,
    required this.buttonColor,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.info,
    required this.textColor,
    this.backgroundColor,
  }) : super(key: key);
  final String backgroundImage;
  final Color buttonColor;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String info;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.stripbackground,
        borderRadius: BorderRadius.circular(Constants.defaultRadus / 2),
      ),
      width: appService.swidth,
      height: appService.sheight * .120,
      // padding: EdgeInsets.all(Constants.defaultPadding),
      child: Stack(
        children: [
          Image.asset(backgroundImage),
          Container(
            padding: const EdgeInsets.all(Constants.defaultPadding * 1.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderText(title, textColor: textColor),
                      NormalText(subtitle + ' ' + info, color: textColor),
                    ]),
                CircleAvatar(
                  backgroundColor: buttonColor,
                  child: Icon(Icons.play_arrow, color: iconColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
