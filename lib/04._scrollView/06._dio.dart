import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

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
      body: DioDemo(),
    );
  }
}


class DioDemo extends StatefulWidget {
  const DioDemo({super.key});

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('点击发送请求'),
        onPressed: () {
          getIp();
        },
      ),
    );
  }

  void getIp() async {
     try {
       final url = 'https://httpbin.org/ip';
       final dio = Dio();
       final response = await dio.get(url);
       print(response.data);
     } catch (e){
       print(e);
     }
  }
}

