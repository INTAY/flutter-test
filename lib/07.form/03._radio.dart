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
      body: CheckBoxDemo(),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio(
            value: 1,
            groupValue: gender,
            onChanged: (newValue) {
              setState(() {
                gender= newValue!;
              });
            },
          ),
          title: Text('男'),
        ),
        ListTile(
          leading: Radio(
            value: 2,
            groupValue: gender,
            onChanged: (newValue) {
              setState(() {
                gender= newValue!;
              });
            },
          ),
          title: Text('女'),
        ),
      ],
    );
  }
}