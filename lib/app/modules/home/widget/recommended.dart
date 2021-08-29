import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/home/controllers/home_controller.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

///Recommended Widget of home page
class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
        width: appService.swidth,
        height: appService.sheight * .26,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText(
              Strings.recommended,
              textColor: AppColors.textColor,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: controller.recommendedUserList
                    .map((e) => Container(
                          height: appService.sheight * .14,
                          width: appService.swidth * .4,
                          padding: EdgeInsets.all(Constants.defaultmargin / 2),
                          margin: EdgeInsets.all(Constants.defaultmargin / 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset(e.image),
                                  decoration: BoxDecoration(
                                      color: e.background,
                                      borderRadius: BorderRadius.circular(
                                          Constants.defaultmargin)),
                                ),
                              ),
                              HeightWidget(h: .001),
                              HeaderText(
                                e.title,
                                textColor: AppColors.textColor,
                                fontSize: appService.swidth * .05,
                              ),
                              HeightWidget(h: .001),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  NormalText(
                                    e.subtitle.toUpperCase(),
                                    fontSize: appService.swidth * .031,
                                    color: AppColors.pRIMARYCOLORLIGHT,
                                  ),
                                  WidthWidget(h: .01),
                                  CircleAvatar(
                                      radius: Constants.defaultRadus / 9,
                                      backgroundColor:
                                          AppColors.pRIMARYCOLORLIGHT),
                                  WidthWidget(h: .008),
                                  NormalText(
                                    e.duration,
                                    color: AppColors.pRIMARYCOLORLIGHT,
                                    fontSize: appService.swidth * .031,
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
