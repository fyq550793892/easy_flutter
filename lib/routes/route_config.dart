import 'package:easy_flutter/jverify_modules/jverify/jverify_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../main.dart';

/**
 * @Author: fanyuqing
 * @Description: 路由名
 * @date: 2022/4/12
 */
class RouteConfig {
  static const String appHomePage = "/"; //
  static const String jverifyPage = "/jverifyPage";
  // static const String tabViewPage = "/tabViewPage"; // 主页
  // static const String loginPage = "/loginPage"; // 登录
  // static const String inputCodePage = "/inputCodePage"; // 输入验证码
  // static const String studyFlagPage = "/studyFlagPage"; // 兴趣爱好
  // static const String serviceAgreementPage = "/serviceAgreementPage";
  // static const String privacyAgreementPage = "/privacyAgreementPage";
  // static const String editDataPage = "/editDataPage"; // 修改个人信息
  // static const String aboutUsPage = "/aboutUsPage"; // 关于我们
  // static const String accountSafeMainPage = "/accountSafeMainPage"; // 注销账号
  // static const String accountSafeDetailPage = "/accountSafeDetailPage"; // 注销账号
  // static const String bindPhonePage = "/bindPhonePage"; // 绑定手机号
  // static const String otherInputCodePage = "/otherInputCodePage"; // 绑定手机号输入验证码
  // static const String myPayPage = "/myPayPage"; // 我的订单
  // static const String myPayDetailPage = "/myPayDetailPage"; // 我的订单
  // static const String feedBackPage = "/feedBackPage"; // 意见反馈
  // static const String consultingServicePage = "/consultingServicePage"; // 咨询页
  // static const String deBugPage = "/deBugPage"; //调试页

  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(
        name: appHomePage,
        page: () => MyHomePage(
              title: '首页',
            )),
    GetPage(name: jverifyPage, page: () => JverifyPage()),
    // GetPage(name: loginPage, page: () => LoginPage()),
    // GetPage(name: inputCodePage, page: () => InputCodePage()),
    // GetPage(name: studyFlagPage, page: () => StudyFlagPage()),
    // GetPage(name: serviceAgreementPage, page: () => ServiceAgreementPage()),
    // GetPage(name: privacyAgreementPage, page: () => PrivacyAgreementPage()),
    // GetPage(name: editDataPage, page: () => EditDataPage()),
    // GetPage(name: aboutUsPage, page: () => AboutUsPage()),
    // GetPage(name: accountSafeMainPage, page: () => AccountSafeMainPage()),
    // GetPage(name: accountSafeDetailPage, page: () => AccountSafeDetailPage()),
    // GetPage(name: bindPhonePage, page: () => BindPhonePage()),
    // GetPage(name: otherInputCodePage, page: () => OtherBindPhoneNum()),
    // GetPage(name: myPayPage, page: () => MyPayPage()),
    // GetPage(name: myPayDetailPage, page: () => MyPayDetailPage()),
    // GetPage(name: feedBackPage, page: () => FeedBackPage()),
    // GetPage(name: consultingServicePage, page: () => ConsultingServicePage()),
    // GetPage(name: deBugPage, page: () => DeBugPage()),
  ];
}
