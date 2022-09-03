import 'package:flutter/material.dart';

class StackDemo1 extends StatelessWidget {
  const StackDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack和Position 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/aspectRatio")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.lightGreenAccent,
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Positioned(
                child: Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 100,
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.amberAccent,
                  )),
              Positioned(
                right: 0,
                child: Icon(
                  Icons.settings_applications,
                  size: 30,
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
