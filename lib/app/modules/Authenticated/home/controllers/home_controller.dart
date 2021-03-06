import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/app/constant/constants.dart';
import 'package:meditation/app/data/model/meditation_odel.dart';
import 'package:meditation/app/data/model/recommended_model.dart';
import 'package:meditation/app/data/repositories/recommend_repositiories.dart';
import 'package:meditation/app/modules/Authenticated/home/views/home_view.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/Account/account_widget.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/meditation/meditation_widget.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/music/music_widget.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/sleep/sleep_widget.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/tabItems.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    loadRemommended();
  }

  RxBool sleepingMenuClick = false.obs;

  //It  controll the index of meditation menu
  RxInt mediMenuIndex = 0.obs;

  ///it is the list of mediation menu
  List<MeditationModel> mediMenuList = [
    new MeditationModel(icons: Icons.filter_vintage_outlined, title: 'All'),
    new MeditationModel(icons: Icons.favorite_outline, title: 'My'),
    new MeditationModel(icons: Icons.sentiment_dissatisfied, title: 'Anxious'),
    new MeditationModel(icons: Icons.dark_mode, title: 'Sleep'),
    new MeditationModel(icons: Icons.child_care_outlined, title: 'Kids'),
  ];

  List<Widget> bodyWidget = [
    Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        child: SingleChildScrollView(child: DashboardWidget())),
    Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        child: SleepView()),
    Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        child: MeditationView()),
    MusicWidget(),
    AccountWidgt(),
  ];

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
