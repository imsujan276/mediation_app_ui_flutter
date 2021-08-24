import 'package:get/get.dart';

import 'package:meditation/app/modules/home/bindings/home_binding.dart';
import 'package:meditation/app/modules/home/views/home_view.dart';
import 'package:meditation/app/modules/signin/bindings/signin_binding.dart';
import 'package:meditation/app/modules/signin/views/signin_view.dart';
import 'package:meditation/app/modules/splash/bindings/splash_binding.dart';
import 'package:meditation/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
  ];
}
