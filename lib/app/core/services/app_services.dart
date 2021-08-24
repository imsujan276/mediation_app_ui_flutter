import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppService extends GetxController {
  static AppService instance = Get.find();
  RxBool islandscape = false.obs;
  double sheight = 0.0;
  double swidth = 0.0;

  @override
  void onInit() {
    super.onInit();
  }

  void sizeinit(BuildContext context) {
    swidth = MediaQuery.of(context).size.width;
    sheight = MediaQuery.of(context).size.height;
    islandscape.value = swidth > 375 ? true : false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
