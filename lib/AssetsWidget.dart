import 'package:flutter/material.dart';

import 'Utils.dart';

class AssetsWidget extends StatelessWidget {
  AssetsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //方式一：当有context时候，可以使用该方式读取json文件内容
    DefaultAssetBundle.of(context)
        .loadString("assets/config.json")
        .then((value) => {print(value)})
        .catchError((onError) => {print(onError)});

    //方式二：当没有context，可全局范围进行读取
    loadAsset()
        .then((value) => {print(value)})
        .catchError((onError) => {print(onError)});

    return Scaffold(
      appBar: AppBar(
        title: Text("AssetsWidget"),
      ),
      body: Center(
        child: Text("读取文件"),
      ),
    );
  }
}
