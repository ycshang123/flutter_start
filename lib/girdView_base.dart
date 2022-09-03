import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/data/data_list.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(230, 230, 230, 0.9), width: 1.0)),
        child: Column(
          children: [
            Image.network(value["imageUrl"]),
            const SizedBox(
              height: 12,
            ),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView.count 实现网格布局"),
        actions: [
          IconButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, "/gridView/build")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: _getListData(),
      ),
    );
  }
}
