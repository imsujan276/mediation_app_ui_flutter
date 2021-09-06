import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/Authenticated/home/controllers/home_controller.dart';
import 'package:meditation/app/widgets/recommended_item_list.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';

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
              textColor: Get.isDarkMode
                  ? Theme.of(context).accentColor
                  : AppColors.textColor,
            ),
            Expanded(
              child: RecommendedListWidget(controller: controller),
            ),
          ],
        ));
  }
}

///its the list of recommended
class RecommendedListWidget extends StatelessWidget {
  const RecommendedListWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: controller.recommendedUserList
          .map((e) => RecommendedListItem(e: e))
          .toList(),
    );
  }
}
