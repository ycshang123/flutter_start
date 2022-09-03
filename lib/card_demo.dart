import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Card 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/card/layout")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    "张三",
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text("高级软件工程师"),
                ),
                Divider(),
                ListTile(
                  title: Text("电话：1233323341"),
                ),
                ListTile(
                  title: Text("地址:江苏南京"),
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    "李四",
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text("高级软件工程师"),
                ),
                Divider(),
                ListTile(
                  title: Text("电话：1233323341"),
                ),
                ListTile(
                  title: Text("地址:江苏南京"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
