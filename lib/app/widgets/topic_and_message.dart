import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

///It display three type of text main text and subtext and message
class TopicHeadAndMessage extends StatelessWidget {
  const TopicHeadAndMessage({
    Key? key,
    required this.maintitle,
    required this.subtitle,
    required this.message,
    this.isSecondbold = false,
  }) : super(key: key);
  final String maintitle;
  final String subtitle;
  final String message;
  final bool isSecondbold;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightWidget(h: .04),
          HeaderText(
            maintitle,
            textColor: AppColors.textColor,
          ),
          if (subtitle.isNotEmpty)
            HeaderText(
              subtitle,
              isBold: isSecondbold,
              fontSize: Constants.defaultFontSize * 1.6,
              textColor: AppColors.textColor,
            ),
          HeightWidget(h: .02),
          NormalText(
            message,
            color: Theme.of(context).primaryColorLight,
          ),
          HeightWidget(h: .02),
        ]);
  }
}
