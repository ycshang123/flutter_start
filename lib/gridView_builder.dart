import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/data/data_list.dart';

class GridView2 extends StatelessWidget {
  const GridView2({Key? key}) : super(key: key);

  Widget _getListData(context, index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
        child: Column(
          children: [
            Image.network(listData[index]['imageUrl']),
            const SizedBox(
              height: 12,
            ),
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView.builder 实现网格布局"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/padding")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: GridView.builder(
        itemCount: listData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 1.0),
        itemBuilder: _getListData,
      ),
    );
  }
}
