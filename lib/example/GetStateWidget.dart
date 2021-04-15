import 'package:flutter/material.dart';

class GetStateWidget extends StatefulWidget {
  GetStateWidget({Key key}) : super(key: key);

  @override
  _GetStateState createState() => _GetStateState();
}

class _GetStateState extends State<GetStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetStateWidget"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              // 方式一： 查找父级最近的Scaffold对应的ScaffoldState对象
              // ScaffoldState _state =
              //     context.findAncestorStateOfType<ScaffoldState>();
              // // 调用ScaffoldState的showSnackBar来弹出SnackBar
              // _state.showSnackBar(
              //   SnackBar(
              //     content: Text("我是SnackBar"),
              //   ),
              // );

              // 方式二：通过of提供的静态类也可以获取状态方法
              ScaffoldState ofScaffoldState = Scaffold.of(context);
              ofScaffoldState
                  .showSnackBar(SnackBar(content: Text("我是SnackBar")));
            },
            child: Text("显示SnackBar"),
          );
        }),
      ),
    );
  }
}
