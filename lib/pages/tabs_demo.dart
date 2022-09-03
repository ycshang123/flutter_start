import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/pages/tabs/category_demo.dart';
import 'package:flutter_start/pages/tabs/home_demo.dart';
import 'package:flutter_start/pages/tabs/setting_demo.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _pageList = [
    const HomeDemo(),
    const CategoryDemo(),
    const SettingDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter 底部导航"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/appBar")},
              icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //  配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 36.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置")
        ],
      ),
    );
  }
}
