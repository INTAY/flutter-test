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
      body: AnonymousDemo(),
    );
  }
}


class AnonymousDemo extends StatefulWidget {
  const AnonymousDemo({super.key});

  @override
  State<AnonymousDemo> createState() => _AnonymousDemoState();
}

class _AnonymousDemoState extends State<AnonymousDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDemo())),
          child: Text('跳转到商品页面'),
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

