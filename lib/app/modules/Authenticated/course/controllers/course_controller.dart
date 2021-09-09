import 'package:get/get.dart';
import 'package:meditation/app/data/model/VoiceModel.dart';
import 'package:meditation/app/data/repositories/female_voice_repositories.dart';
import 'package:meditation/app/data/repositories/male_voice_repositories.dart';

class CourseController extends GetxController {
  List<VoiceModel> maleVoiceList = [];
  List<VoiceModel> femaleVoiceList = [];
  //have selected male or female voice
  RxInt voiceIndex = 0.obs;

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
