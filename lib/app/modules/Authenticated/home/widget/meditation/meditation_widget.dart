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
import 'package:meditation/app/modules/Authenticated/home/controllers/home_controller.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/sleep/sleep_widget.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/strip_ads_banner.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/routes/app_pages.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

class MeditationView extends StatelessWidget {
  const MeditationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final controller = Get.find<HomeController>();
    return Column(
      children: [
        HeightWidget(.08),
        HeaderText(
          Strings.meditation,
          textColor: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
        ),
        HeightWidget(.01),
        Padding(
          padding: const EdgeInsets.all(Constants.defaultPadding / 2),
          child: NormalText(
            'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
            color: AppColors.textLightColor,
            isCentered: true,
          ),
        ),
        HeightWidget(.02),
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
        HeightWidget(.02),
        Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: topics.length,
            itemBuilder: (BuildContext context, int index) => new Container(
                decoration: BoxDecoration(
                    color: topics[index].color,
                    borderRadius:
                        BorderRadius.circular(Constants.defaultRadus / 2)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Constants.defaultRadus)),
                  // padding: const EdgeInsets.all(Constants.defaultPadding),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.MUSIC);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Image.asset(
                            topics[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: appService.swidth,
                          padding:
                              const EdgeInsets.all(Constants.defaultPadding),
                          decoration: BoxDecoration(
                              color:
                                  topics[index].color, // topics[index].color,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                      Constants.defaultRadus / 2),
                                  bottomRight: Radius.circular(
                                      Constants.defaultRadus / 2))),
                          child: NormalText(
                            topics[index].text,
                            color: AppColors.WHITE,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 2.3),
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
        )
      ],
    );
  }
}
