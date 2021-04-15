import 'package:flutter/material.dart';

class GlobalKeyWidget extends StatefulWidget {
  GlobalKeyWidget({Key key}) : super(key: key);

  @override
  _GlobalKeyWidget createState() => _GlobalKeyWidget();
}

class _GlobalKeyWidget extends State<GlobalKeyWidget> {
  //定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("GlobalKeyWidget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _globalKey.currentState
                .showSnackBar(SnackBar(content: Text("我是SnackBar")));
          },
          child: Text("点击我"),
        ),
      ),
    );
  }
}
