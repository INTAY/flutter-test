import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItem> bottomNavtems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.home),
      label: '首页'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.message),
        label: '消息'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.yellow,
        icon: Icon(Icons.shopping_cart),
        label: '购物车'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.green,
        icon: Icon(Icons.person),
        label: '我的'
    ),
  ];

  final pages = [
    Center(
      child: Text('首页'),
    ),
    Center(
      child: Text('Message'),
    ),
    Center(
      child: Text('Shopping'),
    ),
    Center(
      child: Text('MY'),
    ),
  ];
  int currentIndex = 0;

  void _ChangePages(int index) {
        if (index != currentIndex) {
           setState(() {
             currentIndex = index;
           });
        }
  }

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
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavtems,
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _ChangePages(index);
        },
      ),
      body: pages[currentIndex],
    );
  }
}
