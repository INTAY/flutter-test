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
      body: ListViewDemo(),
    );
  }
}


class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ListViewBasic(),
              ListViewHor(),
              ListViewBuilderDemo(),
              ListViewSeperatedDemo(),
            ],
          ),
        )
      ],
    );
  }
}

class ListViewBasic extends StatefulWidget {
  const ListViewBasic({super.key});

  @override
  State<ListViewBasic> createState() => _ListViewBasicState();
}

class _ListViewBasicState extends State<ListViewBasic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.green,
      child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('表'),
              subtitle: Text('子表'),
              trailing: Icon(Icons.account_circle_rounded),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('表'),
              subtitle: Text('子表'),
              trailing: Icon(Icons.account_circle_rounded),
              selected: true,
              selectedTileColor: Colors.green,
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('表'),
              subtitle: Text('子表'),
              trailing: Icon(Icons.account_circle_rounded),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('表'),
              subtitle: Text('子表'),
              trailing: Icon(Icons.account_circle_rounded),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('表'),
              subtitle: Text('子表'),
              trailing: Icon(Icons.account_circle_rounded),
            ),
          ]
      ),
    );
  }
}


class ListViewHor extends StatefulWidget {
  const ListViewHor({super.key});

  @override
  State<ListViewHor> createState() => _ListViewHorState();
}

class _ListViewHorState extends State<ListViewHor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            color: Colors.green,
          ),
          Container(
            width: 150,
            color: Colors.red,
          ),
          Container(
            width: 150,
            color: Colors.yellow,
          ),
          Container(
            width: 150,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({super.key});

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  final List<Widget> users = new List<Widget>.generate(20, (index) => OutlinedButton(
      onPressed: () {
        print('点击');
      } ,
      child: Text('点击$index ')));
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: users.length,
        itemExtent: 30,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
        return users[index];
      }),
    );
  }
}


class ListViewSeperatedDemo extends StatefulWidget {
  const ListViewSeperatedDemo({super.key});

  @override
  State<ListViewSeperatedDemo> createState() => _ListViewSperatedDemoState();
}

class _ListViewSperatedDemoState extends State<ListViewSeperatedDemo> {
  final List<Widget> products = List.generate(20, (index) => OutlinedButton(
      onPressed: () {}, 
      child: ListTile(
        leading: Image.asset('images/01.jpeg'),
        title: Text('表'), 
        subtitle: Text('子表'),
        trailing: Icon(Icons.account_circle_rounded),
      )
  )
  );

  @override
  Widget build(BuildContext context) {
    Widget dividerOdd = Divider(
      color: Colors.blueAccent,
      thickness: 2,
    );
    Widget dividerEvent = Divider(
      color: Colors.yellow,
      thickness: 9,
    );
    return Column(
      // height: 150,
      children: [
        ListTile(
          title: Text('展示列表'),
        ),
        Container(
        height: 200,
        child:  ListView.separated(
    itemBuilder: (context, index) {
    return products[index];
    },
    // 分割器的构造器
    separatorBuilder: (context, index) {
    return index % 2 == 0 ? dividerOdd : dividerEvent;
    },
    itemCount: products.length),
        )

      ]
    );
  }
}


