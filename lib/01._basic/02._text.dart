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
      body: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello Fultter=====================================================',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
          ),
          textAlign: TextAlign.left,
          maxLines: 1,
          overflow: TextOverflow.ellipsis ,
        ),
        RichText(text: TextSpan(
          text: 'Hello Words',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
          ),
          children: [
            TextSpan(
              text: 'Fultter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.green,
                ),
            ),
            TextSpan(
              text: 'Rect',
              style: TextStyle(
                fontSize: 30,
                // color: Colors.brown ,
                color: Color.fromARGB(255, 0, 0, 255),
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.green,
                fontFamily: 'Kirang_Haerang',
              ),
            ),
          ],
        ))
      ],
    );
  }
}
