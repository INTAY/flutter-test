import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: StatefulWidgetDemo(),
    );
  }
}

class StatefulWidgetDemo extends StatefulWidget {
  const StatefulWidgetDemo({super.key});

  @override
  State<StatefulWidgetDemo> createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  int _num = 0;
  void increament() {
    setState(() {
      _num++;
    });
  }

  void remove() {
    setState(() {
      _num--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ShareDateWidget(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: remove,
              child: Icon(Icons.remove),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              // child: Text('数字:$_num'),
              child: MyCounter(),
            ),
            ElevatedButton(
              onPressed: increament,
              child: Icon(Icons.add),
            ),

          ],
        ),
      ),
      num: _num,
    );

  }
}

// 子组件
class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    print(ShareDateWidget.of(context).num.toString());
    // 使用数据
    return Text('子组件${ShareDateWidget.of(context).num.toString()}');
  }
}



// 共享组件
class ShareDateWidget extends InheritedWidget {
  // 定义数据
  final int num;
  const ShareDateWidget({
    super.key,
    required Widget child,
    required this.num // 传入数据
  }) : super(child: child);

  static ShareDateWidget of(BuildContext context) {
    final ShareDateWidget? result = context.dependOnInheritedWidgetOfExactType<ShareDateWidget>();
    assert(result != null, 'No ShareDateWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ShareDateWidget old) {
    return true;
  }
}

class InheritedWidgetDemo extends StatefulWidget {
  const InheritedWidgetDemo({super.key});

  @override
  State<InheritedWidgetDemo> createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
