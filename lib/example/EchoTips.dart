import 'package:flutter/material.dart';

///  author : wanlinruo
///  date : 2021/4/8 10:59
///  contact : ln.wan@tuya.com
///  description :
class EchoTips extends StatelessWidget {
  const EchoTips(
      {Key key, @required this.text, this.backgroundColor: Colors.greenAccent})
      : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo"),
      ),
      body: Center(
          child: Container(
        child: Text(text),
        color: backgroundColor,
      )),
    );
  }
}
