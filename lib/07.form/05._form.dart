import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'placeholders.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('首页文本'),
              onTap: () => Navigator.of(context).pushNamed('loading'),
            ),
            ListTile(
              title: const Text('文本点击'),
              onTap: () => Navigator.of(context).pushNamed('slide'),
            )
          ],
        ),
      ),
    );
  }
}

class LoadingListPage extends StatefulWidget {
  const LoadingListPage({super.key});

  @override
  State<LoadingListPage> createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('点击文本'),
      ),
      body: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: const SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                // BannerPlaceholder(),
                // TitlePlaceholder(width: double.infinity),
                SizedBox(height: 16.0),
                // ContentPlaceholder(
                //   lineType: ContentLineType.threeLines,
                // ),
                // SizedBox(height: 16.0),
                // TitlePlaceholder(width: 200.0),
                // SizedBox(height: 16.0),
                // ContentPlaceholder(
                //   lineType: ContentLineType.twoLines,
                // ),
                // SizedBox(height: 16.0),
                // TitlePlaceholder(width: 200.0),
                // SizedBox(height: 16.0),
                // ContentPlaceholder(
                //   lineType: ContentLineType.twoLines,
                // ),
              ],
            ),
          )),
    );
  }
}

class ContentPlaceholder {
  const ContentPlaceholder({required lineType});
}

class BannerPlaceholder {
  const BannerPlaceholder();
}

class SlideToUnlockPage extends StatelessWidget {
  final List<String> days = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  SlideToUnlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    final int hour = time.hour;
    final int minute = time.minute;
    final int day = time.weekday;
    final int month = time.month;
    final int dayInMonth = time.day;
    return Scaffold(
      appBar: AppBar(
        title: const Text('文本点击'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '${hour < 10 ? '0$hour' : '$hour'}:${minute < 10 ? '0$minute' : '$minute'}',
                    style: const TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Text(
                    '${days[day - 1]}, ${months[month - 1]} $dayInMonth',
                    style: const TextStyle(fontSize: 24.0, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 32.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: Opacity(
                  opacity: 0.8,
                  child: Shimmer.fromColors(
                    baseColor: Colors.black12,
                    highlightColor: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/chevron_right.png',
                          height: 20.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                        const Text(
                          '滑动点击',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}


// class FromDemo extends StatefulWidget {
//   const FromDemo({super.key});
//
//   @override
//   State<FromDemo> createState() => _FromDemoState();
// }
//
// class _FromDemoState extends State<FromDemo> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: '手机号',
//                   ),
//                   validator: (value) {
//                     RegExp reg = new RegExp(r'^\d{11}$');
//                     if (!reg.hasMatch(value!)) {
//                       return '非法手机号';
//                     }
//                     return null;
//                   },
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               print('提交成功');
//                             }
//                           },
//                           child: Text('点击开始'),
//                         ),
//                     )
//                   ],
//                 ),
//                
//               ],
//             ),
//
//           )
//         ],
//       ) ,
//     );
//   }
// }
