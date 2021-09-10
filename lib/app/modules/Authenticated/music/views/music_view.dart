import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/constant/controller_service.dart';
import 'package:meditation/app/modules/registration/signin/widget/height_widget.dart';
import 'package:meditation/app/widgets/clipper/half_cirlce.dart';
import 'package:meditation/app/widgets/text/header_widget.dart';
import 'package:meditation/app/widgets/text/normal_widget.dart';

import '../controllers/music_controller.dart';

class MusicView extends GetView<MusicController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? Theme.of(context).primaryColor
          : AppColors.musicbackground,
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: HalfCicle(),
              child: Container(
                color: Get.isDarkMode
                    ? AppColors.WHITE.withAlpha(20)
                    : AppColors.RED.withOpacity(.1),
                height: appService.sheight * .3,
                width: appService.swidth * .4,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: ClipPath(
                clipper: HalfCicle(),
                child: Container(
                  color: Get.isDarkMode
                      ? AppColors.WHITE.withAlpha(20)
                      : AppColors.RED.withOpacity(.1),
                  height: appService.sheight * .3,
                  width: appService.swidth * .4,
                ),
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
                            backgroundColor: Get.isDarkMode
                                ? AppColors.GREY.withOpacity(.4)
                                : AppColors.GREY,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: Constants.defaultFontSize + 5,
                              color: AppColors.WHITE,
                            ),
                          ),
                          WidthWidget(.008),
                          CircleAvatar(
                            backgroundColor: Get.isDarkMode
                                ? AppColors.GREY.withOpacity(.4)
                                : AppColors.GREY,
                            child: Icon(
                              Icons.download,
                              size: Constants.defaultFontSize + 5,
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
                            textColor: Get.isDarkMode
                                ? AppColors.WHITE
                                : AppColors.textColor,
                          ),
                          NormalText('7 Day of clam'.toUpperCase()),
                        ],
                      ),
                      MusicProgressBar(),
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

class MusicProgressBar extends StatefulWidget {
  const MusicProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  _MusicProgressBarState createState() => _MusicProgressBarState();
}

class _MusicProgressBarState extends State<MusicProgressBar> {
  final controller = Get.find<MusicController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                if (controller.musicposition.value - 10 > 0) {
                  controller.musicposition.value -= 10;
                  controller.assetsAudioPlayer.seek(Duration(
                      seconds: controller.musicposition.value.toInt()));
                }
              },
              child: Icon(Icons.replay_10_outlined,
                  size: Constants.defaultRadus * 1.5,
                  color: Get.isDarkMode ? AppColors.WHITE : AppColors.GREY),
            ),
            CircleAvatar(
              backgroundColor: Get.isDarkMode
                  ? AppColors.WHITE.withOpacity(.3)
                  : AppColors.textColor.withOpacity(.1),
              radius: Constants.defaultRadus * 1.8,
              child: Obx(
                () => InkWell(
                    onTap: () async {
                      controller.playorpause();
                    },
                    child: CircleAvatar(
                      radius: Constants.defaultRadus * 1.4,
                      backgroundColor: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                      child: controller.playing.value
                          ? Icon(
                              Icons.pause,
                              size: Constants.defaultFontSize * 2,
                              color: Get.isDarkMode
                                  ? AppColors.textColor
                                  : AppColors.WHITE,
                            )
                          : Icon(Icons.play_arrow,
                              size: Constants.defaultFontSize * 2,
                              color: Get.isDarkMode
                                  ? AppColors.textColor
                                  : AppColors.WHITE),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                if (controller.musicposition.value + 10 <
                    controller.musiclength.value) {
                  controller.musicposition.value += 10;
                  controller.assetsAudioPlayer.seek(Duration(
                      seconds: controller.musicposition.value.toInt()));
                }
              },
              child: Icon(Icons.forward_10_outlined,
                  size: Constants.defaultRadus * 1.5,
                  color: Get.isDarkMode ? AppColors.WHITE : AppColors.GREY),
            ),
          ],
        ),
        HeightWidget(.05),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor:
                Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
            inactiveTrackColor: AppColors.GREY,
            trackShape: RectangularSliderTrackShape(),
            trackHeight: 3.0,
            thumbColor: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            overlayColor: Get.isDarkMode
                ? AppColors.WHITE.withAlpha(20)
                : AppColors.textColor.withAlpha(20),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding / 1.2),
            child: StreamBuilder<Duration>(
                stream: controller.assetsAudioPlayer.currentPosition,
                builder:
                    (BuildContext context, AsyncSnapshot<Duration> snapshot) {
                  if (!snapshot.hasData) {
                    return Slider(
                      value: 0.0,
                      onChanged: (double value) => null,
                      activeColor: Colors.transparent,
                      inactiveColor: Colors.transparent,
                    );
                  }

                  return Slider(
                    min: 0.0,
                    max: controller.musiclength.value,
                    value: controller.musiclength.value ==
                            controller.musicposition.value
                        ? 0.0
                        : controller.musicposition.value,
                    onChanged: (double value) {
                      controller.assetsAudioPlayer
                          .seek(Duration(seconds: value.toInt()));
                      value = value;
                    },
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PlayerBuilder.currentPosition(
                  player: controller.assetsAudioPlayer,
                  builder: (context, duration) {
                    controller.musicposition.value =
                        duration.inSeconds.toDouble();
                    return NormalText(
                      duration.inSeconds.toDouble().toString(),
                      color: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                      isBold: true,
                    );
                  }),
              // Obx(() => NormalText(
              //       controller.musicposition.value.toStringAsFixed(1),
              //       color:
              //           Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
              //       isBold: true,
              //     )),
              Obx(() => NormalText(
                    controller.musiclength.value.toStringAsFixed(1),
                    color:
                        Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                    isBold: true,
                  )),
            ],
          ),
        )
      ],
    );
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    controller.assetsAudioPlayer.seek(newDuration);
  }
}
