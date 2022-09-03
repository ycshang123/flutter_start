import 'package:flutter/material.dart';
import 'package:flutter_start/data/data_list1.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/card")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: ListView(
        children: listData1.map((value) {
          return Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 20 / 9,
                    child: Image.network(
                      value['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imageUrl"]),
                    ),
                    title: Text(value["title"]),
                    subtitle: Text(
                      value["description"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ));
        }).toList(),
      ),
    );
  }
}
