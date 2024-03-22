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
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'product'),
          child: Text('跳转'),
        ),
      ),
    );
  }
}


class ProductDemo extends StatelessWidget {
  const ProductDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('回退'),
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



