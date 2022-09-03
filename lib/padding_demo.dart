import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/row")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/1.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/3.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/4.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/5.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                "https://www.itying.com/images/flutter/6.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
