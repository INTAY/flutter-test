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
      body: GridViewDemo(),
    );
  }
}


class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key});

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child:
      // GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 5,
      //       crossAxisSpacing: 5,
      //       childAspectRatio: 1.5,
      //   ),
      //   children: [
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //     ),
      //   ],
      // ),
      GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1.5,
        ),
        children: [
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
        ],
      ),
    );
  }
}
