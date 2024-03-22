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
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.lightBlue,
              height: 50,
              width: 50,
            ),
            Expanded(child: Container(
              color: Colors.brown,
              height: 50,
              width: 50,
            ))
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.rtl,
          children: [
            Icon(Icons.ac_unit, size: 50,),
            Icon(Icons.access_alarm_outlined,size: 50,),
            Icon(Icons.access_time_filled_rounded, size: 60,)
          ],
        ),
        Flex(direction: Axis.vertical,
          children: [
            Icon(Icons.ac_unit, size: 50,),
            Icon(Icons.access_alarm_outlined,size: 50,),
            Icon(Icons.access_time_filled_rounded, size: 60,)
          ],
        )
      ],
    );
  }
}
