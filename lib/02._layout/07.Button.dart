import 'package:flutter/cupertino.dart';
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
      body: ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('你好');
        }, 
        tooltip: '点击',
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({super.key});

  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
          children: [
            TextButton(onPressed: () {
              print('点击');
            }, child: Text('点击按钮1')),
            // ElevatedButton(
            //     onPressed: () {
            //         print('点击-1');
            //     },
            //     onLongPress: () {
            //       print('点击-长点击');
            //     },
            //     child: Text('点击按钮2')),
            // OutlinedButton(
            //     onPressed: () {
            //       print('点击-3');
            //     },
            //     onLongPress: () {
            //       print('点击-长点击-3');
            //     },
            //     child: Text('点击按钮3'),
            //     style: ButtonStyle(
            //       textStyle: MaterialStateProperty.all(
            //         TextStyle(
            //           fontSize: 30,
            //         ),
            //       ),
            //       foregroundColor: MaterialStateProperty.resolveWith((states) {
            //         print(MaterialState);
            //         // 按下
            //         if (states.contains(MaterialState.pressed)) {
            //
            //           return Colors.red;
            //         }
            //         // 默认
            //         return Colors.yellow;
            //       }),
            //       shadowColor: MaterialStateProperty.all(Colors.red),
            //       elevation: MaterialStateProperty.all(10),
            //       side: MaterialStateProperty.all(
            //         BorderSide(
            //           color: Colors.green,
            //           width: 2
            //         ),
            //       ),
            //       shape: MaterialStateProperty.all(
            //         StadiumBorder(
            //           side: BorderSide(
            //             color: Colors.yellow,
            //             width: 2
            //           )
            //         )
            //       ),
            //     ),
            // ),
            OutlinedButtonTheme(data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red)
              )
            ), child: OutlinedButton(
                onPressed: () {
                  print('点击-1-them');
                },
                onLongPress: () {
                  print('点击-长点击-them');
                },
                child: Text('点击按钮-thenm')
            )),
            IconButton(onPressed: () {
              print('ICON-BUTOON');
            }, icon: Icon(Icons.accessibility_rounded),
              color: Colors.blueAccent,
              highlightColor: Colors.yellow,
              splashColor: Colors.yellow,
              tooltip: '小人',
            ),
            TextButton.icon(onPressed: () {
              print('文本按钮');
            }, icon: Icon(Icons.ac_unit), label: Text('雪花')),
          ],
        ),
        Wrap(
          children: [
            ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('按钮1')),
                OutlinedButton(onPressed: () {}, child: Text('按钮2'))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
