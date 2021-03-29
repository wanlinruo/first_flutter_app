import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DebugDumpWidget extends StatelessWidget {
  DebugDumpWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DebugDumpWidget"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // debugDumpApp();
            // debugDumpRenderTree();
            // debugDumpLayerTree();
            debugDumpSemanticsTree(DebugSemanticsDumpOrder.inverseHitTest);
          },
          child: Text("Dump App"),
        ),
      ),
    );
  }
}
