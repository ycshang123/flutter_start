import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack和Align 组件"),
        actions: [
          IconButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, "/stack/position")},
              icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.lightBlue,
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Align(
                alignment: Alignment(1, -0.2),
                child: Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.search,
                    size: 50,
                    color: Colors.amberAccent,
                  )),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.settings_applications,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
