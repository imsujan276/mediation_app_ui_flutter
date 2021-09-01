import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/data/model/VoiceModel.dart';
import 'package:meditation/app/data/repositories/female_voice_repositories.dart';
import 'package:meditation/app/data/repositories/male_voice_repositories.dart';

class CourseController extends GetxController {
  List<VoiceModel> maleVoiceList = [];
  List<VoiceModel> femaleVoiceList = [];

  @override
  void onInit() {
    super.onInit();
    loadVoices();
  }

  void loadVoices() {
    maleVoiceList = maleVoice;
    femaleVoiceList = femaleVoice;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
