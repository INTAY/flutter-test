import 'package:flutter/cupertino.dart';
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
      body: SwitchDemo(),
    );
  }
}


class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchValue = false;
  bool _cupSwitchValue = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchValue,
              onChanged: (bool val) {
                setState(() {
                  _switchValue = val;
                });
              },
              activeColor: Colors.red,
            ),
            title: Text('当前的状态是${_switchValue == true ? '选中' : '未选中'}'),
          ),
          ListTile(
            leading: CupertinoSwitch(
              value: _cupSwitchValue,
              onChanged: (bool val) {
                setState(() {
                  _cupSwitchValue = val;
                });
              },
              activeColor: Colors.red,
            ),
            title: Text('当前的状态是${_cupSwitchValue == true ? '选中' : '未选中'}'),
          ),
        ],
      ),
    );
  }
}

