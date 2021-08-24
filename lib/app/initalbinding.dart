import 'package:get/get.dart';
import 'package:meditation/app/core/services/app_services.dart';

class InitalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AppService());
  }
}
