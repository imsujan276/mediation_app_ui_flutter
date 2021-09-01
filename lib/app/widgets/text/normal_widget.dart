import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';

class NormalText extends StatelessWidget {
  final double? fontSize;
  final bool isBold;
  final bool hasUnderline;
  final String text;
  final bool isCentered;
  final Color? color;
  final int maxline;

  const NormalText(
    this.text, {
    this.fontSize,
    this.isBold = false,
    this.hasUnderline = false,
    this.isCentered = false,
    this.color,
    this.maxline = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: fontSize != null ? fontSize! : null,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            decoration: hasUnderline ? TextDecoration.underline : null,
            color: color ?? AppColors.textLightColor,
          ),
      textAlign: isCentered ? TextAlign.center : null,
      maxLines: maxline,
      overflow: TextOverflow.clip,
    );
  }
}
