import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/clipper/half_cirlce.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/music_controller.dart';

class MusicView extends GetView<MusicController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.musicbackground,
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: HalfCicle(),
              child: Container(
                color: AppColors.RED.withOpacity(.1),
                height: appService.sheight * .3,
                width: appService.swidth * .4,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Constants.defaultmargin * 2,
                      horizontal: Constants.defaultmargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.WHITE,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.close,
                            color: AppColors.BLACK,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.GREY,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: AppColors.WHITE,
                            ),
                          ),
                          WidthWidget(.008),
                          CircleAvatar(
                            backgroundColor: AppColors.GREY,
                            child: Icon(
                              Icons.download,
                              color: AppColors.WHITE,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                HeightWidget(.1),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          HeaderText(
                            'Focus Attention',
                            textColor: AppColors.textColor,
                          ),
                          NormalText('7 Day of clam'.toUpperCase()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.replay_10_outlined,
                              size: Constants.defaultRadus * 1.5,
                              color: AppColors.GREY),
                          CircleAvatar(
                            backgroundColor:
                                AppColors.textColor.withOpacity(.1),
                            radius: Constants.defaultRadus * 1.8,
                            child: CircleAvatar(
                                radius: Constants.defaultRadus * 1.4,
                                backgroundColor: AppColors.textColor,
                                child: Icon(Icons.pause)),
                          ),
                          Icon(Icons.forward_10_outlined,
                              size: Constants.defaultRadus * 1.5,
                              color: AppColors.GREY),
                        ],
                      ),
                      Column(
                        children: [
                          ProgressSlider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Constants.defaultPadding / 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NormalText(
                                  '01:30',
                                  color: AppColors.textColor,
                                  isBold: true,
                                ),
                                NormalText(
                                  '45:00',
                                  color: AppColors.textColor,
                                  isBold: true,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressSlider extends StatefulWidget {
  const ProgressSlider({
    Key? key,
  }) : super(key: key);

  @override
  _ProgressSliderState createState() => _ProgressSliderState();
}

class _ProgressSliderState extends State<ProgressSlider> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: AppColors.textColor,
        inactiveTrackColor: AppColors.GREY,
        trackShape: RectangularSliderTrackShape(),
        trackHeight: 3.0,
        thumbColor: AppColors.textColor,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
        overlayColor: AppColors.textColor.withAlpha(20),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding / 1.2),
        child: Slider(
          max: 100,
          min: 0,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
