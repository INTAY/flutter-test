import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import '01._basic/02._text.dart';
// import '02._layout/01._Text.dart';
// import '02._layout/02._Coumn_Row.dart';
// import '02._layout/03._flex.dart';
// import '02._layout/04._wrap.dart';
// import '02._layout/05._stack.dart';
// import '02._layout/06.Card.dart';
// import '02._layout/07.Button.dart';
// import '03._image/01._image.dart';
// import '04._scrollView/01._scrollView.dart';
// import '04._scrollView/02._listView.dart';
// import '04._scrollView/03._GridView.dart';
// import '04._scrollView/04._GridView.dart';
// import '04._scrollView/05._otherGroup.dart';
// import '04._scrollView/06._dio.dart';
// import '05._state/01._StatefulWidget.dart';
// import '05._state/02.DataTable.dart';
// import '05._state/03._inheritedWidget.dart';
// import '05._state/04.lifeCycle.dart';
// import '05._state/05.proider.dart';
// import '06._navigation/01.anonymous.dart';
// import '06._navigation/02._nameRoutes.dart';
// import '06._navigation/03._argument.dart';
// import '06._navigation/04._drawer.dart';
// import '06._navigation/05._BottomNavigatorBar.dart';
// import '06._navigation/06._Tab.dart';
// import '07.form/01.Switch.dart';
// import '07.form/02.Checkbox.dart';
// import '07.form/03._radio.dart';
// import '07.form/04._TextFileds.dart';
import '07.form/05._form.dart';
// import '07.form/06._flutter_slidable.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的app',
       home: Home(),
      theme: ThemeData(
          // fontFamily: 'Kirang_Haerang',
          textTheme: TextTheme(
            subtitle1: TextStyle(
              fontSize: 50,
              color: Colors.red,
            )
          ),
          iconTheme: IconThemeData(
            color: Colors.red,
            size: 40
          ),
      ),
      // 指定本地化代理，用于查找本地化的资源
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // // 指定应用支持的所有本地化语言
      // supportedLocales: [
      //   const Locale('en', 'US'), // 英语
      //   const Locale('es', 'ES'), // 西班牙语
      //   const Locale('zh', 'CN'), // 中文简体
      //   // 更多语言...
      // ],
      routes: {
        'home': (context) => Home(),
        // 'product1': (context) => ProductDemo1(),
        // 'product2': (context) => ProductDemo2(),
        // 'product3': (context) => ProductDemo3(),
        // 'product4': (context) => ProductDemo4(),
      },
      initialRoute: 'home',
      // onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage() ),
      // onGenerateRoute: (RouteSettings setting) {
      //   if (setting.name == '/') {
      //     print('跳转home');
      //     return MaterialPageRoute(builder: (context) => Home());
      //   }
      //   if (setting.name == 'product1') {
      //     print('1');
      //     return MaterialPageRoute(builder: (context) => ProductDemo1());
      //   }
      //   if (setting.name == 'product2') {
      //     print('2');
      //     return MaterialPageRoute(builder: (context) => ProductDemo2());
      //   }
      //   if (setting.name == 'product3') {
      //     print('3');
      //     return MaterialPageRoute(builder: (context) => ProductDemo3());
      //   }
      //   if (setting.name == 'product4') {
      //     print('4');
      //     return MaterialPageRoute(builder: (context) => ProductDemo4());
      //   }
      //   return MaterialPageRoute(builder: (context) => UnknownPage());
      // },
      debugShowCheckedModeBanner: false,

    );
  }
}





