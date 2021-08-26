import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/data/repositories/topic_data_repositories.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/topic_controller.dart';

class TopicView extends GetView<TopicController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeightWidget(h: .04),
            HeaderText(
              Strings.whatbringyou,
              textColor: AppColors.textColor,
            ),
            HeaderText(
              Strings.toSlinemood + '?',
              isBold: false,
              fontSize: Constants.defaultFontSize * 1.6,
              textColor: AppColors.textColor,
            ),
            HeightWidget(h: .02),
            NormalText(
              Strings.chooseandfocus,
              color: Theme.of(context).primaryColorLight,
            ),
            HeightWidget(h: .02),
            Expanded(
                child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: topics.length,
              itemBuilder: (BuildContext context, int index) => new Container(
                  color: topics[index].color,
                  child: Column(
                    children: [
                      Image.asset(
                        topics[index].image,
                        fit: BoxFit.fitHeight,
                      ),
                      NormalText(
                        topics[index].text,
                        color: controller.numCount(index)
                            ? AppColors.WHITE
                            : AppColors.textColor,
                      )
                    ],
                  )),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 2.3),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ))
          ],
        ),
      )),
    );
  }
}