import 'package:flutter/material.dart';

class CategoryDemo extends StatefulWidget {
  const CategoryDemo({Key? key}) : super(key: key);

  @override
  State<CategoryDemo> createState() => _CategoryDemoState();
}

class _CategoryDemoState extends State<CategoryDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("分类"),
    );
  }
}
