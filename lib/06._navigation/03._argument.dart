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
      body: NameRoutesDemo(),
    );
  }
}

class NameRoutesDemo extends StatefulWidget {
  const NameRoutesDemo({super.key});

  @override
  State<NameRoutesDemo> createState() => _NameRoutesDemoState();
}

class _NameRoutesDemoState extends State<NameRoutesDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              // onPressed: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => ProductDemo1(),
              //       settings: RouteSettings(
              //         arguments: {'name': '我是12344'},
              //       ),
              //     )
              // ),
              onPressed: () => Navigator.pushNamed(context, 'product1',
                arguments: {'age': '14'},
              ),
              child: Text('跳转1'),

            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'product2', arguments: {'name': '我叫213123'}),
              child: Text('跳转2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'product3'),
              child: Text('跳转3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'product4'),
              child: Text('跳转4'),
            ),
          ],
        ),

      ),
    );
  }
}


class ProductDemo1 extends StatelessWidget {
  const ProductDemo1({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;
    // final todo = ModalRoute.of(context)!.settings.arguments as Map;
    // print(args);

    return Container(
      height: 200,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('回退-1'),
            ),
            Text('参数:${args['age']}'),
          ],
        ),
      ),
    );
  }
}

class ProductDemo2 extends StatelessWidget {
  const ProductDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      child: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('回退-2'),
            ),
            Text('${args['name']}'),
          ],
        )
      ),
    );
  }
}

class ProductDemo3 extends StatelessWidget {
  const ProductDemo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('回退-3'),
        ),
      ),
    );
  }
}

class ProductDemo4 extends StatelessWidget {
  const ProductDemo4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('回退-4'),
        ),
      ),
    );
  }
}

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('回退--404'),
        ),
      ),
    );
  }
}