import 'package:get/get.dart';

import '../controllers/remainder_controller.dart';

class RemainderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemainderController>(
      () => RemainderController(),
    );
  }
}
