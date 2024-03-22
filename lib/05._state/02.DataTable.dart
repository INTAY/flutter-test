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
      body: DataTableDemo(),
    );
  }
}


class User {
  String name;
  String home;
  String femal;
  int age;
  bool selected;

  User(this.name,this.age, this.home, this.femal, { this.selected = false});
}


class DataTableDemo extends StatefulWidget {
  const DataTableDemo({super.key});

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<User> _list =  [
    User('张三', 18, '安徽', '男'),
    User('莉丝', 25, '广东', '女', selected: true),
    User('王五', 32, '江苏', '男'),
    User('赵六', 28, '浙江', '男'),
  ];

  _getUsersRows() {
    List<DataRow> dataRows = [];
    for (int i = 0; i < _list.length; i++) {
      dataRows.add(
        DataRow(
            selected: _list[i].selected,
            onSelectChanged: (selected) {
              print(selected);
              setState(() {
                _list[i].selected = selected ?? true;
              });
            },
            cells: [
              DataCell(Text('${_list[i].name}')),
              DataCell(Text('${_list[i].age}')),
              DataCell(Text('${_list[i].femal}')),
              DataCell(Text('${_list[i].home}')),
        ])
      );
    };
    return dataRows;
  }
  var _sortAscendings = true;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            sortColumnIndex: 1,
            sortAscending: _sortAscendings,
            dataRowHeight: 100,
            horizontalMargin: 10,
            columnSpacing: 100,
            columns: [
              DataColumn(label: Text('姓名')),
              DataColumn(
                  label: Text('年龄'),
                  numeric: true,
                  onSort: (int columnIndex, bool asscending) {
                    print(asscending);
                    setState(() {
                      _sortAscendings = asscending;
                      if (asscending) {
                        _list.sort((a, b) => a.age.compareTo(b.age));
                      } else {
                        _list.sort((a, b) => b.age.compareTo(a.age));
                      }
                    });
                  },
              ),
              DataColumn(label: Text('性别')),
              DataColumn(label: Text('籍贯')),
            ],
            rows: _getUsersRows(),
        ),
      ),
    );
  }
}
