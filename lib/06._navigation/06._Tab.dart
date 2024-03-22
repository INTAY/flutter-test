import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // const Home ({super.key});
  final List<Widget> _tabs = [
    Tab(text: '首页', icon: Icon(Icons.home)),
    Tab(text: '消息', icon: Icon(Icons.message)),
    Tab(text: '购物车', icon: Icon(Icons.shopping_cart)),
    Tab(text: '我的', icon: Icon(Icons.person)),
  ];

  final List<Widget> _pages = [
    Icon(Icons.home,size: 30,),
    Icon(Icons.message,size: 30, ),
    Icon(Icons.shopping_cart,size: 30,),
    Icon(Icons.person,size: 30,),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabs.length,
        child:       Scaffold(
        appBar: AppBar(
        title: Text('首页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
        body: TabBarView(
              children: _pages,
          ),                 
         bottomNavigationBar: TabBar(
           tabs: _tabs,
           labelColor: Colors.red,
           unselectedLabelColor: Colors.black,
           indicatorSize: TabBarIndicatorSize.tab,
           indicatorColor: Colors.red,
           indicatorWeight: 10,
         ),
        )
    );
  }
}
