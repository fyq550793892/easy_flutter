import 'package:easy_flutter/routes/route_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class LoginMiddle extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    bool login = SpUtil.getBool("login") ?? false;
    if (login) {
      return null;
    } else {
      // 加入 AuthService
      Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
      return const RouteSettings(
        name: RouteConfig.loginPage,
      );
    }
  }
}
