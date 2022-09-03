import 'package:flutter/material.dart';

class SearchDemo extends StatelessWidget {
  const SearchDemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text("搜素页面内容"),
      ),
    );
  }
}
