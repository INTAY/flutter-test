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
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      width: double.infinity,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Icon(Icons.ac_unit, size: 50,),
              Icon(Icons.access_alarm_outlined,size: 50,),
              Icon(Icons.access_time_filled_rounded, size: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit, size: 50,),
                  Icon(Icons.access_alarm_outlined,size: 50,),
                  Icon(Icons.access_time_filled_rounded, size: 60,)
                ],
              )
            ],
      ),
    );
  }
}
