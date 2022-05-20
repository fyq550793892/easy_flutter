import 'package:easy_flutter/widget_study_modules/tab_to_scroll/page_to_tab_scroll.dart';
import 'package:easy_flutter/widgets/keep_alive_wrapper_widget.dart';
import 'package:flutter/material.dart';

/**
 * @Author: fanyuqing
 * @Description:
 * @date: 2022/5/20
 */
class WidgetStudyPage extends StatelessWidget {
  const WidgetStudyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        /// （1）pageView页面没有缓存，会导致滑动时下一页面会重建，所以用如下方法（2）
        child: PageView(
          children: [
            ...[
              PageToTabScroll(title: "滑动相关"),
              KeepAliveWrapperWidget(
                child: PageWidget(
                  text: "2",
                ),
              )
            ],
            KeepAliveWrapperWidget(
              child: PageWidget(
                text: "3",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageWidget extends StatefulWidget {
  final String text;
  const PageWidget({Key key, this.text}) : super(key: key);

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

/// （2）with AutomaticKeepAliveClientMixin 传递super.build
///  (3)或者外层套一个KeepAliveWrapperWidget
class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    // super.build(context);
    print("到了这里===${widget.text}");
    return Center(
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 36),
      ),
    );
  }
}
