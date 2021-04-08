import 'package:flutter/material.dart';

///  author : wanlinruo
///  date : 2021/4/8 11:11
///  contact : ln.wan@tuya.com
///  description :
class ContextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContextRoute"),
      ),
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          child: Builder(builder: (context) {
            Scaffold scaffold =
                context.findAncestorWidgetOfExactType<Scaffold>();
            return (scaffold.appBar as AppBar).title;
          }),
        ),
      ),
    );
  }
}
