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
      body: ImageDemo(),
    );
  }
}


class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/01.jpg',
          width: 200,
          height: 100,
          fit: BoxFit.fill,
        ),
        Image.asset('images/01.jpeg'),
        Image.network(
          'https://img1.baidu.com/it/u=979083104,1936879404&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=281',
          // colorBlendMode: BlendMode.colorDodge,
          // color: Colors.red,
        ),
      ],
    );
  }
}
