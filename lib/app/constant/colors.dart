import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static const String _color1 = '#FF725E';

  /*
Splash Screen Color
 
splash clipart border of below
#F9F0E3
clippath background
#FAF8F5      
bold text big one
#3F414E
light one
#A1A4B2

login text
#A1A4B2

Signin page

background color of text field
#F2F3F7
Border color of checkbox
#A1A4B2
privacy policy 
#A1A4B2

am text
#263238

everyday is best
#A1A4B2

su circle
#3F414E



home
icon background
#8E97FD
icon border
#A0A3B1

icons fav background
#FF84A2

headphone color
#7FD2F2

night welcome
background
#E5E5E5

button textcolor
#F6F1FB

strip banner type bg color blackof home page

#333242

in medication v2 bg of stripe
#F1DDCF


   */

  static Color primaryCOLOR = HexColor("#8E97FD");
  static Color pRIMARYCOLORLIGHT = HexColor("#E5E5E5");
  static Color pRIMARYCOLORDARK = HexColor("#03174C");
  static Color aCCENTCOLOR = HexColor("#F2F3F7");
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color BLACK = Color(0xFF000000);
  static const Color GREY = Color(0xFF9F9F9F);
  static const Color GREY50 = Color(0xFFFAFAFA);
  static const Color RED = Color(0xFFFF0000);
  static Color textColor = HexColor("#3F414E");
  static Color textLightColor = HexColor("#A1A4B2");
  static Color borderColor = HexColor("#EBEAEC");
  static Color buttonBackgroundColor = HexColor("#8E97FD");
  static Color fbbackgroundColor = HexColor("#7583CA");
  static Color backgroundofWaveClipPath = HexColor("#FAF8F5");

  static hexcolor1() {
    return getColorFromHex(_color1);
  }

  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}
