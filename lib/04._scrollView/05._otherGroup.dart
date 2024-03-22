import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body: cupertinoDemo(),
    );
  }
}


class cupertinoDemo extends StatefulWidget {
  const cupertinoDemo({super.key});

  @override
  State<cupertinoDemo> createState() => _cupertinoDemoState();
}

class _cupertinoDemoState extends State<cupertinoDemo> {
  @override
  Widget build(BuildContext context) {
    Widget dialogBox;
    if (Platform.isAndroid) {
      // 加载android版本的组件
      dialogBox = MaterialDemo();
    } else if (Platform.isIOS) {
      // 加载ios版本的组件
      dialogBox = IOSDemo();
    }
    return Container(
      // child: dialogBox(),
 
      // ),
    );
  }
}


class MaterialDemo extends StatefulWidget {
  const MaterialDemo({super.key});

  @override
  State<MaterialDemo> createState() => _MaterialDemoState();
}

class _MaterialDemoState extends State<MaterialDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('确认删除？'),
        actions: [
          TextButton(onPressed: () {print('取消');}, child: Text('取消')),
          TextButton(onPressed: () {print('确认');}, child: Text('确认'))
        ],
      ),
    );
  }
}


class IOSDemo extends StatefulWidget {
  const IOSDemo({super.key});

  @override
  State<IOSDemo> createState() => _IOSDemoState();
}

class _IOSDemoState extends State<IOSDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        children: [
          CupertinoAlertDialog(
            title: Text('提示'),
            content: Text('确认删除？'),
            actions: [
              CupertinoDialogAction(
                child: Text('取消'),
                onPressed: () {
                  print('取消');
                },
              ),
              CupertinoDialogAction(
                child: Text('确认'),
                onPressed: () {
                  print('确认');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}





