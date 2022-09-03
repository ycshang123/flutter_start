import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row组件布局"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/column")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Container(
        height: 700,
        width: 500,
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer(
              Icons.home,
              color: Colors.red,
            ),
            IconContainer(
              Icons.search,
              color: Colors.blue,
            ),
            IconContainer(
              Icons.send,
              color: Colors.orangeAccent,
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
      {Key? key, this.size = 32.0, this.color = Colors.blue})
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
