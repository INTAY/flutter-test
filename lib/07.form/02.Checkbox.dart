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
  bool _male = true;
  bool _female = false;
  bool _other = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
          value: _male,
          onChanged: (bool? newValue) {
            setState(() {
              _male = newValue!;
          });
        },
        ),
          title: Text('男'),
        ),
        ListTile(
          leading: Checkbox(
            value: _female,
            onChanged: (bool? newValue) {
              setState(() {
                _female = newValue!;
              });
            },
          ),
          title: Text('女'),
        ),
        CheckboxListTile(
          secondary: Icon(Icons.pages),
          value: _other,
          onChanged: (bool? newValue) {
            setState(() {
              _other = newValue!;
            });
          },
          title: Text('标题'),
          subtitle: Text('子标题'),
          // activeColor: Colors.red,
          // checkColor: Colors.yellow,
          selectedTileColor: Colors.yellow,
          selected: _other,
        )
      ],
    );
  }
}
