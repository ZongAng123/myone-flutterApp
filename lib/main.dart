import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //主函数（main）使用了 (=>) 符号，这是 Dart 中单行函数或方法的简写

class MyApp extends StatelessWidget {
  //该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个 widget
  // 在 Flutter 中，几乎所有都是 widget，包括对齐 (alignment)、填充 (padding) 和布局 (layout)。

  @override
  Widget build(BuildContext context) {
    // 一个 widget 的主要工作是提供一个 build() 方法来描述如何根据其他较低级别的 widgets 来显示自己。

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        //Scaffold 是 Material 库中提供的一个 widget，它提供了默认的导航栏、标题和包含主屏幕 widget 树的 body 属性。 widget 树可以很复杂。
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          // 本示例中的 body 的 widget 树中包含了一个 Center widget， Center widget 又包含一个 Text 子 widget， Center widget 可以将其子 widget 树对齐到屏幕中心。
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
