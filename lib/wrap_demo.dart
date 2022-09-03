import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Flutter Wrap 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/tab")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          children: const [
            MyButton("第1集"),
            MyButton("第2集"),
            MyButton("第3集"),
            MyButton("第4集"),
            MyButton("第5集"),
            MyButton("第6集"),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
          primary: Colors.green, onPrimary: Colors.white),
    );
  }
}
