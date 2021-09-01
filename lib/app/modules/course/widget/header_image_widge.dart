import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';

class HeaderImages extends StatelessWidget {
  const HeaderImages({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appService.sheight * .4,
      width: appService.swidth,
      child: Stack(
        children: [
          SizedBox(
            width: appService.swidth,
            child: Image.asset(
              img,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding + 10,
                vertical: Constants.defaultPadding * 2),
            margin: const EdgeInsets.only(
              top: Constants.defaultPadding + 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.WHITE,
                  child: BackButton(
                    color: AppColors.BLACK,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.BLACK.withOpacity(.4),
                      child: Icon(
                        Icons.favorite_border,
                        color: AppColors.WHITE,
                      ),
                    ),
                    WidthWidget(.01),
                    CircleAvatar(
                      backgroundColor: AppColors.BLACK.withOpacity(.4),
                      child: Icon(
                        Icons.file_download,
                        color: AppColors.WHITE,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
