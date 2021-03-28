import 'package:flutter/material.dart';

import 'AssetsWidget.dart';
import 'EchoRoute.dart';
import 'NewRoute.dart';
import 'RandomWordsWidget.dart';
import 'RouterTestRoute.dart';

//应用入口
void main() => runApp(MyApp());

/// 应用结构
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/", //名为"/"的路由作为应用的home(首页)
      title: 'Flutter Demo', //应用名称
      theme: ThemeData(
        primarySwatch: Colors.blue, //蓝色主题
      ),
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
        "new_route": (context) => NewRoute(), //路由表注册
        "router_test_route": (context) => RouterTestRoute(), //路由表注册
        "echo_route": (context) => EchoRoute(), //路由表注册
        "random_words_route": (context) => RandomWordsWidget(), //路由表注册
        "assets_route": (context) => AssetsWidget() //路由表注册
      },
    );
  }
}

/// 首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //用于记录按钮点击的总次数
  int _counter = 0;

  /// 设置状态的自增函数
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //页面脚手架
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            getNewTextButtonWidget(context, "new_route"),
            getNewTextButtonWidget(context, "router_test_route"),
            getNewTextButtonWidget(context, "echo_route", args: "hello"),
            getNewButtonWidget(context, "random_words_route"),
            getNewButtonWidget(context, "assets_route"),
          ],
        ),
      ),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget getNewTextButtonWidget(BuildContext context, String route, {String args}) {
  return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route, arguments: args);
      },
      child: Text("open echo_route"));
}

Widget getNewButtonWidget(BuildContext context, String route) {
  return MaterialButton(
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    child: Text("open $route"),
    color: Colors.amber,
  );
}
