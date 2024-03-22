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
      body: TextFiledDemo(),
    );
  }
}


class TextFiledDemo extends StatefulWidget {
  const TextFiledDemo({super.key});

  @override
  State<TextFiledDemo> createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  String? username;
  String? password;
  String? discription;
  String? phone;
  FocusNode _focusNode = FocusNode();
  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: true,
          focusNode: _focusNode,
          controller: _controller,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: '手机号',
            hintText: '请输入手机号-1',
          ),
          maxLength: 11,
          onChanged: (value) {
            setState(() {
              phone = value;
            });
          },

        ),
        TextField(
          autofocus: true,
          // focusNode: _focusNode,
          // controller: _controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: '手机号',
            hintText: '请输入手机号-1',
          ),
          maxLength: 11,
          onChanged: (value) {
            setState(() {
              phone = value;
            });
          },

        ),
      ],
    );
  }
}
