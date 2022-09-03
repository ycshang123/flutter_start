import 'package:flutter/material.dart';

class ListDemo2 extends StatelessWidget {
  const ListDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("水平组件"),
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.pushNamed(context, "/listview/dyn"),
                  },
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Container(
        height: 200,
        margin: const EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 180,
              color: Colors.lightBlue,
            ),
            Container(
              width: 180,
              color: Colors.amber,
              child: ListView(
                children: [
                  Image.network(
                      "https://git.poker/ycshang123/image-hosting/blob/master/jpg3.4psuwu72r5k0.webp?raw=true"),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    "文本信息",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
            ),
            Container(
              width: 180,
              color: Colors.orangeAccent,
            ),
            Container(
              width: 180,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
