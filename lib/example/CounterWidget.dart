import 'package:flutter/material.dart';

///  author : wanlinruo
///  date : 2021/4/8 11:47
///  contact : ln.wan@tuya.com
///  description :
class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, this.initValue: 0}) : super(key: key);

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  /// 状态初始化
  @override
  void initState() {
    super.initState();
    // 初始化状态
    _counter = widget.initValue;
    print("initState");
  }

  /// 当State对象的依赖发生变化时会被调用
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  /// 开发调试调用，release下不调用
  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  /// 新旧widget的key和runtimeType同时相等时
  @override
  void didUpdateWidget(covariant CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  /// 构建Widget子树
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterWidget"),
      ),
      body: Scaffold(
        body: Center(
          child: TextButton(
            child: Text('$_counter'),
            //点击后计数器自增
            onPressed: () => setState(() => ++_counter),
          ),
        ),
      ),
    );
  }

  /// 当State对象从树中被移除时
  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  /// 当State对象从树中被永久移除时调用
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
}
