import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/data/model/meditation_odel.dart';
import 'package:meditation/app/data/repositories/topic_data_repositories.dart';
import 'package:meditation/app/modules/home/controllers/home_controller.dart';
import 'package:meditation/app/modules/home/widget/strip_ads_banner.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class MeditationView extends StatelessWidget {
  const MeditationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
      children: [
        HeightWidget(h: .08),
        HeaderText(
          Strings.meditation,
          textColor: AppColors.textColor,
        ),
        HeightWidget(h: .01),
        NormalText(
          'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
          color: AppColors.pRIMARYCOLORLIGHT,
          isCentered: true,
        ),
        HeightWidget(h: .02),
        MeditationMenuWIdget(),
        StripBannerWidget(
          backgroundImage: AppImage.stripone,
          buttonColor: AppColors.textColor,
          iconColor: AppColors.WHITE,
          info: 'Pause Practise'.toUpperCase(),
          subtitle: 'ARP 30',
          title: 'Daily Calm',
          textColor: AppColors.WHITE,
          backgroundColor: AppColors.calmColor,
        ),
        HeightWidget(h: .02),
        Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: topics.length,
            itemBuilder: (BuildContext context, int index) => new Container(
                color: topics[index].color,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Constants.defaultRadus)),
                  padding: const EdgeInsets.all(Constants.defaultPadding),
                  child: InkWell(
                    onTap: topics[index].onTap,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Image.asset(
                            topics[index].image,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        NormalText(
                          topics[index].text,
                          color: topics[index].code == 0
                              ? AppColors.WHITE
                              : AppColors.textColor,
                        )
                      ],
                    ),
                  ),
                )),
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 2.3),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        )
      ],
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
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Constants.defaultRadus / 2),
                            color: controller.mediMenuIndex.value == index
                                ? AppColors.primaryCOLOR
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
                        ? AppColors.primaryCOLOR
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
