import 'package:flutter/material.dart';
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
                color: AppColors.heartColor,
              ),
              NormalText('24.234 Favorits')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headset,
                color: AppColors.headsetColor,
              ),
              NormalText('24.234 Listening')
            ],
          )
        ],
      ),
    );
  }
}
