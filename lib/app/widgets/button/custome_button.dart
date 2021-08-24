import 'package:flutter/material.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/constant/themes.dart';

///this custome widget button will show image and text in button
///take label as required paraments
class ButtonWithImage extends StatelessWidget {
  const ButtonWithImage(
    this.label, {
    Key? key,
    this.onTap,
    this.color,
    this.borderRadius,
    this.horizontal,
    this.vertical,
    required this.imageString,
    this.textColor,
    this.borderColor,
    this.isbold = false,
    this.isCentered = false,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String label;
  final Color? color;
  final double? borderRadius;
  final Color? borderColor;
  final double? vertical;
  final double? horizontal;
  final String imageString;
  final Color? textColor;
  final bool isbold;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: appService.swidth,
        //  height: appService.sheight * .1,
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? Constants.defaultPadding,
            vertical: vertical ?? Constants.defaultPadding),
        decoration: BoxDecoration(
            color: color ?? Colors.transparent,
            borderRadius:
                BorderRadius.circular((borderRadius ?? Constants.defaultRadus)),
            border: Border.all(color: borderColor ?? Colors.transparent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Image.asset(
                  imageString,
                  height: Constants.defaultFontSize * 2,
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: textColor ?? AppColors.WHITE,
                    fontWeight: isbold ? FontWeight.bold : FontWeight.normal),
                textAlign: isCentered ? TextAlign.center : TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
