import 'package:get/get.dart';
import 'package:meditation/app/data/model/recommended_model.dart';
import 'package:meditation/app/data/repositories/recommend_repositiories.dart';
import 'package:meditation/app/modules/home/widget/tabItems.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    loadRemommended();
  }

  RxInt currentTab = 0.obs;

  // list tabs here
  final List<TabItem> tabs = [];

  ///use to recommend user list
  List<Recommended> recommendedUserList = [];

  @override
  void onReady() {
    super.onReady();
  }

  ///get recommended list from repositories and assign to list
  void loadRemommended() {
    recommendedUserList = recommendedList;
  }

  @override
  void onClose() {}
}
