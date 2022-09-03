import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListDemo3 extends StatelessWidget {
  List list = [];

  ListDemo3({Key? key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("这是第$i条数据");
    }

    if (kDebugMode) {
      print(list);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 动态列表组件及循环动态数据"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/gridView/base")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.phone),
            title: Text('${list[index]}'),
          );
        },
      ),
    );
  }
}
