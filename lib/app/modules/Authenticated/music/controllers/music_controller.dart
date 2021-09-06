import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class MusicController extends GetxController {
  late AnimationController animationIconController1;
  late AudioCache audioCache;
  late AudioPlayer audioPlayer;
  Duration duration = new Duration();
  Duration position = new Duration();
  Duration slider = new Duration(seconds: 0);
  double durationvalue = 0.0;
  bool issongplaying = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
