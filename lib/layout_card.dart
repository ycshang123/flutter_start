import 'package:flutter/material.dart';
import 'package:flutter_start/data/data_list1.dart';

class CardLayout extends StatelessWidget {
  const CardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card布局 综合实践"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/wrap")},
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
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text(value["title"]),
                  subtitle: Text(
                    value["description"],
                    overflow: TextOverflow.ellipsis,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"]),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
