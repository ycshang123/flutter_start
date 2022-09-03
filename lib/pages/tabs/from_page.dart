import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {
  final Map arguments;

  FromDemo({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("From Page"),
      ),
      body: Center(
        child: Text("表单页面接收参数:${arguments['id']},${arguments['name']}"),
      ),
    );
  }
}
