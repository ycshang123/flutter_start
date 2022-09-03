import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  final index;

  const FloatingActionButtonDemo({Key? key, this.index = 0}) : super(key: key);

  @override
  State<FloatingActionButtonDemo> createState() =>
      _FloatingActionButtonDemoState(index);
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  int currentIndex = 1;

  _FloatingActionButtonDemoState(currentIndex);

  final List _pageList = [
    const Center(
      child: Text("首页"),
    ),
    const Center(
      child: Text("分类"),
    ),
    const Center(
      child: Text("设置"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("底部凸起导航"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/from/widget")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentIndex = 1;
            });
          },
          backgroundColor: currentIndex == 1 ? Colors.green : Colors.grey,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        iconSize: 36.0,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
    );
  }
}
