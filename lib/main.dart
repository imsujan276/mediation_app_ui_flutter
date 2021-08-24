import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:meditation/app/constant/Strings.dart';
import 'package:meditation/app/constant/themes.dart';
import 'package:meditation/app/initalbinding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: Themes.light,
      darkTheme: Themes.dark,
      getPages: AppPages.routes,
      defaultTransition: Transition.native,
      builder: EasyLoading.init(),
      initialBinding: InitalBindings(),
    ),
  );
}
