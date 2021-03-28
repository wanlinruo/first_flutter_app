import 'package:flutter/material.dart';

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
        "random_words": (context) => RandomWordsWidget() //路由表注册
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
            TextButton(
                onPressed: () {
                  //通过路由名打开
                  Navigator.pushNamed(context, "new_route");
                  // //导航到新路由
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return NewRoute();
                  // }));
                },
                child: Text("open new_route")),
            TextButton(
                onPressed: () {
                  // //导航到新路由
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return RouterTestRoute();
                  // }));
                  Navigator.pushNamed(context, "router_test_route");
                },
                child: Text("open router_test_route")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "echo_route",
                      arguments: "hello");
                },
                child: Text("open echo_route")),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "random_words");
              },
              child: Text("open random_words"),
              color: Colors.amber,
            )
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
