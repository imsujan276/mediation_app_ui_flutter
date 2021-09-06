import 'package:get/get.dart';
import 'package:meditation/app/core/middleware/middleware_authentication.dart';
import 'package:meditation/app/modules/Authenticated/course/bindings/course_binding.dart';
import 'package:meditation/app/modules/Authenticated/course/views/course_view.dart';
import 'package:meditation/app/modules/Authenticated/home/bindings/home_binding.dart';
import 'package:meditation/app/modules/Authenticated/home/views/home_view.dart';
import 'package:meditation/app/modules/Authenticated/music/bindings/music_binding.dart';
import 'package:meditation/app/modules/Authenticated/music/views/music_view.dart';
import 'package:meditation/app/modules/Authenticated/play/bindings/play_binding.dart';
import 'package:meditation/app/modules/Authenticated/play/views/play_view.dart';
import 'package:meditation/app/modules/registration/signin/bindings/signin_binding.dart';
import 'package:meditation/app/modules/registration/signin/views/signin_view.dart';
import 'package:meditation/app/modules/registration/signup/bindings/signup_binding.dart';
import 'package:meditation/app/modules/registration/signup/views/signup_view.dart';
import 'package:meditation/app/modules/settings/remainder/bindings/remainder_binding.dart';
import 'package:meditation/app/modules/settings/remainder/views/remainder_view.dart';
import 'package:meditation/app/modules/settings/topic/bindings/topic_binding.dart';
import 'package:meditation/app/modules/settings/topic/views/topic_view.dart';
import 'package:meditation/app/modules/splash/bindings/splash_binding.dart';
import 'package:meditation/app/modules/splash/views/splash_view.dart';
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
        middlewares: [AuthMiddelware()]),
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
        middlewares: [AuthMiddelware()]),
    GetPage(
        name: _Paths.COURSE,
        page: () => CourseView(),
        binding: CourseBinding(),
        middlewares: [AuthMiddelware()]),
    GetPage(
        name: _Paths.MUSIC,
        page: () => MusicView(),
        binding: MusicBinding(),
        middlewares: [AuthMiddelware()]),
    GetPage(
        name: _Paths.WELCOMESPLEEP,
        page: () => WelcomespleepView(),
        binding: WelcomespleepBinding(),
        middlewares: [AuthMiddelware()]),
    GetPage(
        name: _Paths.PLAY,
        page: () => PlayView(),
        binding: PlayBinding(),
        middlewares: [AuthMiddelware()]),
  ];
}
