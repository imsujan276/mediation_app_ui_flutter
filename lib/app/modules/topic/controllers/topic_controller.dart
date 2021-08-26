import 'package:get/get.dart';

class TopicController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  int a = 0;
  bool numCount(int index) {
    if (index < 2) {
      a++;
      return true;
    } else {
      a = 0;
      return false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
