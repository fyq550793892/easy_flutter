import 'package:easy_flutter/routes/route_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * @Author: fanyuqing
 * @Description:
 * @date: 2022/5/6
 */
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              // Get.toNamed(RouteConfig.jverifyPage);
            },
            child: ListTile(
              title: Card(
                child: Container(
                  child: Text("进入极光"),
                  height: 50,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteConfig.mainPage);
            },
            child: ListTile(
              title: Card(
                child: Container(
                  child: Text("进入mainPage"),
                  height: 50,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteConfig.permissionPage);
            },
            child: ListTile(
              title: Card(
                child: Container(
                  child: Text("进入权限页"),
                  height: 50,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteConfig.locationPage);
            },
            child: ListTile(
              title: Card(
                child: Container(
                  child: Text("进入高德定位页"),
                  height: 50,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
