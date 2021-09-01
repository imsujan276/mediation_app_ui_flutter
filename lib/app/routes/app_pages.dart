import 'package:get/get.dart';

import 'package:meditation/app/modules/course/bindings/course_binding.dart';
import 'package:meditation/app/modules/course/views/course_view.dart';
import 'package:meditation/app/modules/home/bindings/home_binding.dart';
import 'package:meditation/app/modules/home/views/home_view.dart';
import 'package:meditation/app/modules/music/bindings/music_binding.dart';
import 'package:meditation/app/modules/music/views/music_view.dart';
import 'package:meditation/app/modules/play/bindings/play_binding.dart';
import 'package:meditation/app/modules/play/views/play_view.dart';
import 'package:meditation/app/modules/remainder/bindings/remainder_binding.dart';
import 'package:meditation/app/modules/remainder/views/remainder_view.dart';
import 'package:meditation/app/modules/signin/bindings/signin_binding.dart';
import 'package:meditation/app/modules/signin/views/signin_view.dart';
import 'package:meditation/app/modules/signup/bindings/signup_binding.dart';
import 'package:meditation/app/modules/signup/views/signup_view.dart';
import 'package:meditation/app/modules/splash/bindings/splash_binding.dart';
import 'package:meditation/app/modules/splash/views/splash_view.dart';
import 'package:meditation/app/modules/topic/bindings/topic_binding.dart';
import 'package:meditation/app/modules/topic/views/topic_view.dart';
import 'package:meditation/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:meditation/app/modules/welcome/views/welcome_view.dart';
import 'package:meditation/app/modules/welcomespleep/bindings/welcomespleep_binding.dart';
import 'package:meditation/app/modules/welcomespleep/views/welcomespleep_view.dart';

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
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.TOPIC,
      page: () => TopicView(),
      binding: TopicBinding(),
    ),
    GetPage(
      name: _Paths.REMAINDER,
      page: () => RemainderView(),
      binding: RemainderBinding(),
    ),
    GetPage(
      name: _Paths.COURSE,
      page: () => CourseView(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: _Paths.MUSIC,
      page: () => MusicView(),
      binding: MusicBinding(),
    ),
    GetPage(
      name: _Paths.WELCOMESPLEEP,
      page: () => WelcomespleepView(),
      binding: WelcomespleepBinding(),
    ),
    GetPage(
      name: _Paths.PLAY,
      page: () => PlayView(),
      binding: PlayBinding(),
    ),
  ];
}
