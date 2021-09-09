import 'package:get/get.dart';
import 'package:meditation/app/core/middleware/middleware_authentication.dart';
import 'package:meditation/app/core/services/app_services.dart';

class InitalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AppService());
    Get.put(AuthMiddelware());
  }
}
