import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded 组件 "),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/layout")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconContainer(
                Icons.home,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: IconContainer(
                Icons.search,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: IconContainer(
                Icons.send,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double? size;
  IconData icon;
  Color color;

  IconContainer(this.icon,
      {Key? key, this.size = 48.0, this.color = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
