import 'package:flutter/material.dart';

class ListDemo1 extends StatelessWidget {
  const ListDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile组件"),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              Navigator.pushNamed(context, "/listview/hor");
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: const [
            ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "this is list",
                  style: TextStyle(fontSize: 28.0),
                ),
                subtitle: Text("this is list this is list")),
            ListTile(
              title: Text(
                "this is list",
              ),
              subtitle: Text("this is list this is list"),
              trailing: Icon(Icons.phone),
            ),
            ListTile(
                title: Text(
                  "this is list",
                  style: TextStyle(fontSize: 28.0),
                ),
                subtitle: Text("this is list this is list")),
            ListTile(
                title: Text(
                  "this is list",
                  style: TextStyle(fontSize: 28.0),
                ),
                subtitle: Text("this is list this is list")),
          ],
        ),
      ),
    );
  }
}
