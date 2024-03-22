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
      body: ScrollView(),
    );
  }
}

class ScrollView extends StatefulWidget {
  const ScrollView({super.key});

  @override
  State<ScrollView> createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(5),
          reverse: false,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(100, (index) => OutlinedButton(onPressed: () {}, child: Text('按钮$index')))
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(5),
          reverse: true,
          child: Row(
              children: List.generate(100, (index) => OutlinedButton(onPressed: () {}, child: Text('按钮$index')))
          ),
        ),
      ],
    );
  }
}



