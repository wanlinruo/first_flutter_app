import 'package:flutter/material.dart';

///  author : wanlinruo
///  date : 2021/3/22 17:37
///  contact : ln.wan@tuya.com
///  description :
class TipRoute extends StatelessWidget {
  const TipRoute({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text("上个页面传递过来的str是'$text'"),
              TextButton(
                onPressed: () => {Navigator.pop(context, "我是返回值")},
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
