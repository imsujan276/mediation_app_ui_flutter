import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/meditation_odel.dart';
import 'package:meditation/app/data/model/recommended_model.dart';
import 'package:meditation/app/data/repositories/recommend_repositiories.dart';
import 'package:meditation/app/data/repositories/topic_data_repositories.dart';
import 'package:meditation/app/modules/home/controllers/home_controller.dart';
import 'package:meditation/app/modules/home/widget/sleep/sleeping_grid.dart';
import 'package:meditation/app/modules/music/views/music_view.dart';
import 'package:meditation/app/modules/play/views/play_view.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/button/button_widget.dart';
import 'package:meditation/app/widgets/recommended_item_list.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class SleepView extends StatelessWidget {
  const SleepView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
        () => controller.sleepingMenuClick.isTrue ? SleepingView() : Sleep());
  }
}

class Sleep extends StatelessWidget {
  const Sleep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      child: Column(
        children: [
          HeightWidget(.08),
          HeaderText(
            'Sleep Stories',
            textColor: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
          ),
          HeightWidget(.01),
          Padding(
            padding: const EdgeInsets.all(Constants.defaultPadding / 2),
            child: NormalText(
              'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
              color: Get.isDarkMode
                  ? AppColors.WHITE
                  : AppColors.pRIMARYCOLORLIGHT,
              isCentered: true,
            ),
          ),
          HeightWidget(.02),
          MeditationMenuWIdget(),
          BannerImage(),
          HeightWidget(.02),
          GridviewWIdget()
        ],
      ),
    );
  }
}

class GridviewWIdget extends StatelessWidget {
  const GridviewWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: recommendedList.length,
        itemBuilder: (BuildContext context, int index) {
          Recommended e = recommendedList[index];

          return RecommendedListItem(
            e: e,
          );
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.count(2, 2),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      height: MediaQuery.of(context).size.height * .25,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Constants.defaultRadus / 2),
              child: Image.asset(AppImage.sceenthree, fit: BoxFit.fitWidth),
            ),
          ),
          Positioned(
              top: 5,
              left: 5,
              child: CircleAvatar(
                backgroundColor: Get.isDarkMode
                    ? AppColors.WHITE.withOpacity(.6)
                    : AppColors.WHITE,
                child: Icon(
                  Icons.lock,
                  color: Get.isDarkMode ? AppColors.WHITE : AppColors.BLACK,
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HeaderText(
                  'Sleep Stories',
                  textColor:
                      Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                ),
                HeightWidget(.0021),
                Padding(
                  padding: const EdgeInsets.all(Constants.defaultPadding / 2),
                  child: NormalText(
                    'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
                    color: AppColors.WHITE,
                    isCentered: true,
                    maxline: 2,
                  ),
                ),
                HeightWidget(.01),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: CustomRoundButton(
                    label: 'Start',
                    onPressed: () {},
                    backgroundColor: AppColors.WHITE,
                    textColor: AppColors.textColor,
                  ),
                ),
                HeightWidget(.01),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MeditationMenuWIdget extends StatelessWidget {
  const MeditationMenuWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      color: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      width: appService.swidth,
      height: appService.sheight * .14,
      child: ListView.builder(
        itemBuilder: (context, index) {
          MeditationModel e = controller.mediMenuList[index];
          return Obx(() => Container(
              margin: EdgeInsets.all(Constants.defaultPadding),
              child: Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        controller.mediMenuIndex.value = index;
                        if (index == 3)
                          controller.sleepingMenuClick.value = true;
                        else
                          controller.sleepingMenuClick.value = false;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Constants.defaultRadus / 2),
                            color: controller.mediMenuIndex.value == index
                                ? AppColors.primaryCOLOR
                                : Get.isDarkMode
                                    ? AppColors.textColor.withOpacity(.5)
                                    : AppColors.GREY),
                        padding: EdgeInsets.symmetric(
                            vertical: Constants.defaultPadding * 1.5,
                            horizontal: Constants.defaultPadding * 1.7),
                        child: Icon(
                          e.icons,
                          color: AppColors.WHITE,
                        ),
                      ),
                    ),
                  ),
                  NormalText(
                    e.title,
                    isBold:
                        controller.mediMenuIndex.value == index ? true : false,
                    color: controller.mediMenuIndex.value == index
                        ? Get.isDarkMode
                            ? AppColors.WHITE
                            : AppColors.primaryCOLOR
                        : AppColors.GREY,
                  )
                ],
              )));
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.mediMenuList.length,
      ),
    );
  }
}
