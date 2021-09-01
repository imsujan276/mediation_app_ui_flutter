import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

/// custom button which take 4 parameters
/// label,voidcallbarck,bgcolor,textcolor
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.GREY,
    this.textColor = AppColors.BLACK,
  });

  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      child: ElevatedButton(
        child: NormalText(label),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor, // background
          onPrimary: textColor, // foreground/text
          onSurface: AppColors.GREY, // disabled
          textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: Constants.defaultFontSize,
          ),
        ),
      ),
    );
  }
}

//it will give round shape button
class CustomRoundButton extends StatelessWidget {
  CustomRoundButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.radius = 20.0,
  });

  final VoidCallback onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: EdgeInsets.symmetric(horizontal: radius / 2),
      //alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor == null
                  ? Get.isDarkMode
                      ? AppColors.pRIMARYCOLORLIGHT
                      : Theme.of(context).primaryColorLight
                  : backgroundColor,
              primary: textColor ?? Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius))),
          child: Text(
            label,
          ),
          onPressed: onPressed),
    );
  }
}

/// custom outlined button widget
class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.GREY,
    this.textColor = AppColors.BLACK,
  });

  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: NormalText(label),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        primary: textColor, // foreground
        side: BorderSide(color: backgroundColor), // background
        onSurface: AppColors.GREY, // disabled
      ),
    );
  }
}

/// custom text button widget
class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    required this.label,
    required this.onPressed,
    this.textColor = AppColors.BLACK,
  });

  final VoidCallback onPressed;
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: NormalText(
        label,
        color: textColor,
      ),
      onPressed: onPressed,
    );
  }
}
