import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/modules/Authenticated/home/controllers/home_controller.dart';
import 'package:meditation/app/modules/Authenticated/play/views/play_view.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';

class SleepingView extends StatelessWidget {
  const SleepingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      color: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      child: Column(
        children: [
          HeightWidget(.06),
          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                child: BackButton(
                  onPressed: () {
                    controller.sleepingMenuClick.value = false;
                  },
                ),
              ),
              WidthWidget(.05),
              HeaderText('Sleep Music',
                  textColor:
                      Get.isDarkMode ? AppColors.WHITE : AppColors.textColor)
            ],
          ),
          HeightWidget(.02),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems(),
              RelatedListItems()
            ],
          )),
        ],
      ),
    );
  }
}
