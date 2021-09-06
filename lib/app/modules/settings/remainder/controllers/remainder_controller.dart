import 'package:get/get.dart';
import 'package:meditation/app/data/model/day_model.dart';

class RemainderController extends GetxController {
  List<Days> weekdaySelected = [
    new Days(day: 'Su'.toUpperCase(), select: true),
    new Days(day: 'M'.toUpperCase(), select: true),
    new Days(day: 'T'.toUpperCase(), select: true),
    new Days(day: 'W'.toUpperCase(), select: true),
    new Days(day: 'TH'.toUpperCase(), select: false),
    new Days(day: 'F'.toUpperCase(), select: false),
    new Days(day: 'S'.toUpperCase(), select: true),
  ];
  RxBool selectedItems = false.obs;
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
