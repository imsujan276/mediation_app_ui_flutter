import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/data/repositories/topic_data_repositories.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';
import 'package:meditation/app/widgets/topic_and_message.dart';

class TopicView extends StatefulWidget {
  @override
  _TopicViewState createState() => _TopicViewState();
}

class _TopicViewState extends State<TopicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Theme.of(context).primaryColor : null,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopicHeadAndMessage(
              maintitle: Strings.whatbringyou,
              subtitle: Strings.toSlinemood,
              message: Strings.chooseandfocus,
            ),
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
            ))
          ],
        ),
      )),
    );
  }
}
