import 'package:flutter/material.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/course_model.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

///It show Course List items in home page
class CourseWidget extends StatelessWidget {
  final Course e;
  const CourseWidget({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appService.sheight * .18,
      width: appService.swidth * .45,
      // padding: EdgeInsets.only(
      //     left: Constants.defaultPadding / 1.5),
      margin: EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding / 1.5,
          vertical: Constants.defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.defaultRadus / 2),
          color: e.background),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            e.image,
            height: appService.sheight * .15,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: Constants.defaultPadding),
              child: HeaderText(
                e.title,
                textColor: e.btnColor,
                fontSize: appService.swidth * .06,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: Constants.defaultPadding),
              child: NormalText(
                e.type,
                color: e.btnColor,
                fontSize: appService.swidth * .04,
              ),
            ),
          ),
          Row(children: [
            WidthWidget(w: .015),
            NormalText(
              e.duration,
              color: e.btnColor,
              fontSize: Constants.defaultFontSize - 3,
            ),
            Expanded(
              child: CustomRoundButton(
                label: Strings.start,
                onPressed: e.onTap,
                backgroundColor: e.btnColor,
                textColor: e.textColor,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
