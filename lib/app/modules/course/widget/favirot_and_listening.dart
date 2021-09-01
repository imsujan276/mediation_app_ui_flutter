import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.heartColor,
              ),
              NormalText(
                '24.234 Favorits',
                color: Get.isDarkMode ? AppColors.WHITE : null,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headset,
                color:
                    Get.isDarkMode ? AppColors.WHITE : AppColors.headsetColor,
              ),
              NormalText(
                '24.234 Listening',
                color: Get.isDarkMode ? AppColors.WHITE : null,
              )
            ],
          )
        ],
      ),
    );
  }
}
