import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordsWidget extends StatelessWidget {
  RandomWordsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //生成随机字符串
    var wordPair = new WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text("RandomWordsWidget"),
      ),
      body: Center(
        child: Text(wordPair.toString()),
      ),
    );
  }
}
