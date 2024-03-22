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
      body: WarpDemo(),
    );
  }
}


class WarpDemo extends StatefulWidget {
  const WarpDemo({super.key});

  @override
  State<WarpDemo> createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  // List<Map>_list = [
  //   {'label': '魏', name: ['曹操', '曹丕', '曹仁', '曹植']},
  //   {'label': '蜀', name: ['刘备', '关羽', '张飞', '诸葛亮']},
  //   {'label': '吴', name: ['孙权', '周瑜', '鲁肃', '吕蒙']},
  // ];
  List<String> _list = ['曹操', '曹丕', '曹仁', '曹植'];

  List<Widget> _weiGuo() {
    return _list.map((item) => Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('魏'),
      ),
      label: Text(item),
    )).toList();
  }

  // List<Widget> _wrapDemo() {
  //   return _list.map((ele) => Wrap(
  //     children: ele.values.map((item) => Chip(
  //       avatar: CircleAvatar(
  //         backgroundColor: Colors.blue,
  //         child: Text(ele.label),
  //       ),
  //       label: Text(item),
  //     )).toList(),
  //     spacing: 10,
  //   )).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Wrap(
          children: _weiGuo(),
          spacing: 8.0,
        )
      ],
    );
  }
}
