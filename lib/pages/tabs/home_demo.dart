import 'package:flutter/material.dart';
import 'package:flutter_start/pages/tabs/search_demo.dart';

class HomeDemo extends StatefulWidget {
  const HomeDemo({Key? key}) : super(key: key);

  @override
  State<HomeDemo> createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: Text("搜索内容"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const SearchDemo(title: "search");
            }));
          },
        ),
        ElevatedButton(
          child: Text("路由传参"),
          onPressed: () {
            Navigator.pushNamed(context, "/from",
                arguments: {"id": 20, "name": "zhangsan"});
          },
        ),
      ],
    ));
  }
}
