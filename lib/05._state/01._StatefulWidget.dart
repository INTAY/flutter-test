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
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: remove,
            child: Icon(Icons.remove),
          ),
          Padding(
          padding: EdgeInsets.all(20),
            child: Text('数字:$_num'),
          ),
          ElevatedButton(
              onPressed: increament,
              child: Icon(Icons.add),
          ),

        ],
      ),
    );
  }
}
