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
      body: CardDemo(),
    );
  }
}


class CardDemo extends StatefulWidget {
  const CardDemo({super.key});

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(30),
          color: Colors.blueAccent,
          shadowColor: Colors.amberAccent,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Colors.green,
              width: 10,
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.abc_rounded, size: 50),
                title: Text('章三',
                style: TextStyle(fontSize: 30),),
                subtitle: Text('董事长',
                style: TextStyle(fontSize: 20)),
              ),
              ListTile(
                title: Text(
                  '电话: 12313123',
                  style: TextStyle(fontSize: 30),),
              ),
              ListTile(
                title: Text('地址: 香港',
                  style: TextStyle(fontSize: 30),),
              ),

            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.abc_rounded, size: 50),
                title: Text('章三',
                  style: TextStyle(fontSize: 30),),
                subtitle: Text('董事长',
                    style: TextStyle(fontSize: 20)),
              ),
              ListTile(
                title: Text(
                  '电话: 12313123',
                  style: TextStyle(fontSize: 30),),
              ),
              ListTile(
                title: Text('地址: 香港',
                  style: TextStyle(fontSize: 30),),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
