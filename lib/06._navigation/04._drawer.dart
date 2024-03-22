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
      body: HomePage(),
      drawer: DrawerDemo(),
      endDrawer: DrawerDemo(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Text('DEMO'),
      ),
    );
  }
}



class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Text('字组件1'),
          ElevatedButton(onPressed: () {}, child: Text('点击')),
          UserAccountsDrawerHeader(
              accountName: Text('头部'),
              accountEmail: Text('liangjianliangchen@qq.com')
          ),
          AboutListTile(
            child: Text('关于'),
            applicationName: '关于啊dasd',
            applicationVersion: '1.0.0',
          )
        ],
      ),
    );
  }
}
