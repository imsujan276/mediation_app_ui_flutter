import 'package:get/get.dart';

import '../controllers/welcomespleep_controller.dart';

class WelcomespleepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomespleepController>(
      () => WelcomespleepController(),
    );
  }
}
