import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';

class Themes {
  /// Light Theme
  static final ThemeData light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryCOLOR,
    accentColor: AppColors.aCCENTCOLOR,
    backgroundColor: AppColors.pRIMARYCOLORLIGHT,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // elevatedButtonTheme: _lightElevatedButtonThemeData,
    // textButtonTheme: _lightTextButtonThemeData,
    // outlinedButtonTheme: _lightOutlinedButtonThemeData,
    textTheme: lightTextTheme,
    scaffoldBackgroundColor: AppColors.WHITE,
    primaryIconTheme: IconThemeData(
      color: AppColors.BLACK,
    ),
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _lightHeadline1,
    headline2: _lightHeadline2,
    headline3: _lightHeadline3,
    headline4: _lightHeadline4,
    headline5: _lightHeadline5,
    headline6: _lightHeadline6,
    bodyText1: _lightBodyText1,
    bodyText2: _lightBodyText2,
    caption: _lightCaption,
    subtitle1: _lightSubtitle1,
    subtitle2: _lightSubtitle2,
    // button: _lightButton,
  );

  static final _lightHeadline1 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 14, //30
  );
  static final _lightHeadline2 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 12, //28
  );
  static final _lightHeadline3 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 10, //26
  );
  static final _lightHeadline4 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 8, //24
  );
  static final _lightHeadline5 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 6, //22
  );
  static final _lightHeadline6 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 4, //20
  );
  static final _lightBodyText2 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize + 2, //18
  );
  static final _lightBodyText1 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize, //16
  );
  static final _lightSubtitle1 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize - 1, //15
  );
  static final _lightSubtitle2 = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize - 2, //14
  );
  static final _lightCaption = TextStyle(
    color: AppColors.textColor,
    fontSize: Constants.defaultFontSize - 4, //12
  );
  // static final _lightButton = TextStyle(
  //   color:AppColors.textColor,
  //   fontSize: Constants.defaultFontSize, //16
  //   fontWeight: FontWeight.normal,
  // );

  // static final _lightElevatedButtonThemeData = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     primary: AppColors.GREY, // background
  //     onPrimary: AppColors.BLACK, // foreground/text
  //     onSurface: AppColors.GREY, // disabled
  //     textStyle: TextStyle(
  //       fontWeight: FontWeight.normal,
  //       fontSize: Constants.defaultFontSize,
  //     ),
  //   ),
  // );

  // static final _lightTextButtonThemeData = TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     primary: Colors.purple, // foreground/text
  //     backgroundColor: Colors.amber, // background
  //     textStyle: TextStyle(
  //       fontSize: Constants.defaultFontSize,
  //     ),
  //   ),
  // );

  // static final _lightOutlinedButtonThemeData = OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     primary: Colors.white, // foreground
  //     onSurface: Colors.grey, // disabled
  //     backgroundColor: Colors.teal, // background
  //   ),
  // );

  /// Dark Theme
  static final ThemeData dark = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: AppColors.pRIMARYCOLORDARK,
    accentColor: AppColors.aCCENTCOLOR,
    backgroundColor: AppColors.pRIMARYCOLORLIGHT,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: AppColors.BLACK,
    primaryIconTheme: IconThemeData(
      color: AppColors.WHITE,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: _darkHeadline1,
    headline2: _darkHeadline2,
    headline3: _darkHeadline3,
    headline4: _darkHeadline4,
    headline5: _darkHeadline5,
    headline6: _darkHeadline6,
    bodyText1: _darkBodyText1,
    bodyText2: _darkBodyText2,
    caption: _darkCaption,
    subtitle1: _darkSubtitle1,
    subtitle2: _darkSubtitle2,
  );

  static final TextStyle _darkHeadline1 =
      _lightHeadline1.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline2 =
      _lightHeadline2.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline3 =
      _lightHeadline3.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline4 =
      _lightHeadline4.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline5 =
      _lightHeadline5.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline6 =
      _lightHeadline6.copyWith(color: Colors.white);
  static final TextStyle _darkBodyText1 =
      _lightBodyText1.copyWith(color: Colors.white);
  static final TextStyle _darkBodyText2 =
      _lightBodyText2.copyWith(color: Colors.white);
  static final TextStyle _darkCaption =
      _lightCaption.copyWith(color: Colors.white);
  static final TextStyle _darkSubtitle1 =
      _lightSubtitle1.copyWith(color: Colors.white);
  static final TextStyle _darkSubtitle2 =
      _lightSubtitle2.copyWith(color: Colors.white);
}
