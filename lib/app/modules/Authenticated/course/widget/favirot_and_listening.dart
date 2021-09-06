import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class FavioritAndListening extends StatelessWidget {
  const FavioritAndListening({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Constants.defaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.heartColor,
              ),
              WidthWidget(.01),
              NormalText(
                '24.234 Favorits',
                isBold: true,
                fontSize: Constants.defaultFontSize - 3,
                color: Get.isDarkMode ? AppColors.WHITE : null,
              )
            ],
          ),
          WidthWidget(.04),
          Row(
            children: [
              Icon(
                Icons.headset,
                color:
                    Get.isDarkMode ? AppColors.WHITE : AppColors.headsetColor,
              ),
              WidthWidget(.01),
              NormalText(
                '24.234 Listening',
                fontSize: Constants.defaultFontSize - 3,
                color: Get.isDarkMode ? AppColors.WHITE : null,
                isBold: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
