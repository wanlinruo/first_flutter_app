import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  EchoRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("EchoRoute"),
      ),
      body: Center(
        child: Text("传递过来的参数是：$args"),
      ),
    );
  }
}
