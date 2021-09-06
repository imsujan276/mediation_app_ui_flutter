import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meditation/app/routes/app_pages.dart';

class AuthMiddelware extends GetMiddleware {
  @override
  int? get priority => 2;
  bool isAuthenticated = false;

  @override
  RouteSettings? redirect(String? route) {
    if (!isAuthenticated) {
      return RouteSettings(name: Routes.SIGNIN);
    }
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return super.onPageBuildStart(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    return super.onPageBuilt(page);
  }

  @override
  void onPageDispose() {
    super.onPageDispose();
  }
}
