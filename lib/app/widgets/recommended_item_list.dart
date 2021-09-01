import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class RecommendedListItem extends StatelessWidget {
  const RecommendedListItem({
    Key? key,
    this.e,
  }) : super(key: key);
  final e;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appService.sheight * .14,
      width: appService.swidth * .4,
      padding: EdgeInsets.all(Constants.defaultmargin / 2),
      margin: EdgeInsets.all(Constants.defaultmargin / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Image.asset(e.image),
              decoration: BoxDecoration(
                  color: e.background,
                  borderRadius: BorderRadius.circular(Constants.defaultmargin)),
            ),
          ),
          HeightWidget(.001),
          HeaderText(
            e.title,
            textColor: Get.isDarkMode
                ? Theme.of(context).accentColor
                : AppColors.textColor,
            fontSize: appService.swidth * .05,
          ),
          HeightWidget(.001),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NormalText(
                e.subtitle.toUpperCase(),
                fontSize: appService.swidth * .031,
                color: AppColors.textLightColor,
              ),
              WidthWidget(.01),
              CircleAvatar(
                radius: Constants.defaultRadus / 9,
                backgroundColor: AppColors.textLightColor,
              ),
              WidthWidget(.008),
              NormalText(
                e.duration,
                color: AppColors.textLightColor,
                fontSize: appService.swidth * .031,
              )
              /*Get.isDarkMode
                    ? AppColors.WHITE
                    : AppColors.pRIMARYCOLORLIGHT*/
            ],
          )
        ],
      ),
    );
  }
}
