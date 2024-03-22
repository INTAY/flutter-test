import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => new LikesModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Provider'),
            leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings)
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          body: ProviderDemo(),
        ),
    );
  }
}

// 创建数据模型
class LikesModel extends ChangeNotifier {
  // 定义参数
  int _likecounter = 0;
  int _dislikecount = 0;
  String _name = '';

  int get likecounter => _likecounter;
  int get dislikecount => _dislikecount;
  String get name => _name;

  // 方法
  increamentCount() {
    _likecounter++;
    if (_dislikecount > 0) {
      _dislikecount--;
    }
    _name = '喜欢';
    // 更新
    notifyListeners();
  }

  subCount() {
    _dislikecount++;
    if (_likecounter > 0) {
      _likecounter--;
    }
    _name = '不喜欢';
    // 更新
    notifyListeners();
  }
}


class ProviderDemo extends StatefulWidget {
  const ProviderDemo({super.key});

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        TextButton(onPressed: Provider.of<LikesModel>(context).increamentCount, child: Text('喜欢')),
        Text('喜欢-${context.watch<LikesModel>()._likecounter}'),
        Text('不喜欢-${context.watch<LikesModel>()._dislikecount}'),
        TextButton(onPressed: Provider.of<LikesModel>(context).subCount, child: Text('不喜欢')),
      ],
    );
  }
}

