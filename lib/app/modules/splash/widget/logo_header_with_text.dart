import 'package:flutter/material.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class LogoTopHeader extends StatelessWidget {
  final Color? textColor;
  final String? image;
  const LogoTopHeader({
    Key? key,
    this.textColor,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NormalText(
          Strings.slient,
          isBold: true,
          color: textColor,
        ),
        WidthWidget(w: .01),
        Image.asset(
          image ?? AppImage.appIconWhite,
          scale: 1.5,
        ),
        WidthWidget(w: .01),
        NormalText(
          Strings.moon,
          isBold: true,
          color: textColor,
        )
      ],
    );
  }
}
