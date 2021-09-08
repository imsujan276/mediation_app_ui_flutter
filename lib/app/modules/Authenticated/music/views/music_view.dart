import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
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

typedef OnError = void Function(Exception exception);

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';
const kUrl2 = 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3';
const kUrl3 = 'http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1xtra_mf_p';

class MusicProgressBar extends StatefulWidget {
  const MusicProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  _MusicProgressBarState createState() => _MusicProgressBarState();
}

class _MusicProgressBarState extends State<MusicProgressBar> {
  final controller = Get.find<MusicController>();
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String? localFilePath;
  String? localAudioCacheURI;

  @override
  void initState() {
    super.initState();

    if (Platform.isIOS) {
      audioCache.fixedPlayer?.notificationService.startHeadlessService();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.replay_10_outlined,
                size: Constants.defaultRadus * 1.5,
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.GREY),
            CircleAvatar(
              backgroundColor: Get.isDarkMode
                  ? AppColors.WHITE.withOpacity(.3)
                  : AppColors.textColor.withOpacity(.1),
              radius: Constants.defaultRadus * 1.8,
              child: Obx(
                () => InkWell(
                  onTap: () async {
                    controller.playing.value = !controller.playing.value;
                    final file =
                        await audioCache.loadAsFile('assets/audio/time.mp3');
                    final bytes = await file.readAsBytes();
                    audioCache.playBytes(bytes);
                  },
                  child: CircleAvatar(
                      radius: Constants.defaultRadus * 1.4,
                      backgroundColor: Get.isDarkMode
                          ? AppColors.WHITE
                          : AppColors.textColor,
                      child: controller.playing.value
                          ? Icon(Icons.pause)
                          : Icon(Icons.play_arrow)),
                ),
              ),
            ),
            Icon(Icons.forward_10_outlined,
                size: Constants.defaultRadus * 1.5,
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.GREY),
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
              child: Slider.adaptive(
                  value: controller.position.inSeconds.toDouble(),
                  max: controller.musiclength.inSeconds.toDouble(),
                  onChanged: (value) {
                    seektoSec(value);
                  })

              // Slider(
              //   max: 100,
              //   min: 0,
              //   value: _value,
              //   onChanged: (value) {
              //     setState(() {
              //       _value = value;
              //     });
              //   },
              // ),
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NormalText(
                '01:30',
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                isBold: true,
              ),
              NormalText(
                '45:00',
                color: Get.isDarkMode ? AppColors.WHITE : AppColors.textColor,
                isBold: true,
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<int> _getDuration() async {
    final uri = await audioCache.load('audio2.mp3');
    await advancedPlayer.setUrl(uri.toString());
    return Future.delayed(
      const Duration(seconds: 2),
      () => advancedPlayer.getDuration(),
    );
  }

  FutureBuilder<int> getLocalFileDuration() {
    return FutureBuilder<int>(
      future: _getDuration(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text('No Connection...');
          case ConnectionState.active:
          case ConnectionState.waiting:
            return const Text('Awaiting result...');
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return Text(
              'audio2.mp3 duration is: ${Duration(milliseconds: snapshot.data!)}',
            );
        }
      },
    );
  }

  seektoSec(double sec) {
    Duration newPos = Duration(seconds: sec.toInt());
    controller.advancedPlayer.seek(newPos);
  }
}
