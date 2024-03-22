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
      body: ContainerDemo(),
    );
  }
}


class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Flutter 是我学会的第一个参数， 1231312312312撒打算打算打算",
        style: TextStyle(
          fontSize: 20
        ),
      ),
      // width: 299,
      // height: 300,
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(20, 30, 40, 60),
      decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     width: 10,
        //     // color: Colors.red
        //   ),
        //     bottom: BorderSide(
        //         width: 10,
        //         // color: Colors.red
        //     ),
        // ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.lightBlue[100]
      ),
    );
  }
}
