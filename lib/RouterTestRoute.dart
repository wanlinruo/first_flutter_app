import 'package:first_flutter_app/TipRoute.dart';
import 'package:flutter/material.dart';

///  author : wanlinruo
///  date : 2021/3/22 19:39
///  contact : ln.wan@tuya.com
///  description :
class RouterTestRoute extends StatelessWidget {
  static const String string = "测试路由传值";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(string),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return TipRoute(text: string);
            }));
            //输出`TipRoute`路由返回结果
            print("路由返回值: $result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}
