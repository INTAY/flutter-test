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
      body: GridViewBuildDemo(),
    );
  }
}


class GridViewCountDemo extends StatefulWidget {
  const GridViewCountDemo({super.key});

  @override
  State<GridViewCountDemo> createState() => _GridViewCountDemoState();
}

class _GridViewCountDemoState extends State<GridViewCountDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5 ,
          padding: EdgeInsets.symmetric(horizontal: 40),
          childAspectRatio: 1.5,
          children: List.generate(10, (index) => Image.asset('images/01.jpeg')),
      ),
    );
  }
}

class GridViewExtendDemo extends StatefulWidget {
  const GridViewExtendDemo({super.key});

  @override
  State<GridViewExtendDemo> createState() => _GridViewExtendDemoState();
}

class _GridViewExtendDemoState extends State<GridViewExtendDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
          maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 40),
        children: List.generate(10, (index) => Image.asset('images/01.jpeg')),
      ),
    );
  }
}

class GridViewBuildDemo extends StatefulWidget {
  const GridViewBuildDemo({super.key});

  @override
  State<GridViewBuildDemo> createState() => _GridViewBuildDemoState();
}

class _GridViewBuildDemoState extends State<GridViewBuildDemo> {
  final List<dynamic> _list = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.blueGrey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return _list[index];
          },
        itemCount: _list.length,
        // physics: BouncingScrollPhysics(),
        // physics: ClampingScrollPhysics(),
        physics: AlwaysScrollableScrollPhysics(),
       ),

    );
  }
}


