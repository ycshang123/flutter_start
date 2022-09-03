import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/floating")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red.shade100,
        child: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  print("点击了");
                },
                child: const Text("普通按钮"),
              ),
              const SizedBox(
                width: 20,
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  print("点击了");
                },
                child: const Text("有颜色的按钮"),
              ),
              const SizedBox(
                width: 20,
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                elevation: 10,
                onPressed: () {
                  print("点击了");
                },
                child: const Text("阴影按钮"),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                height: 60,
                margin: const EdgeInsets.all(20),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  elevation: 10,
                  onPressed: () {
                    print("点击了");
                  },
                  child: const Text("整宽按钮"),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                height: 60,
                margin: const EdgeInsets.all(20),
                child: RaisedButton(
                  onPressed: () {
                    print("点击了");
                  },
                  child: const Text("带圆角的按钮"),
                  textColor: Colors.white,
                  color: Colors.orange,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ))
            ],
          ),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade200,
                  textStyle: const TextStyle(color: Colors.white),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("TextButton"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("OutlinedButton"),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 50,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
