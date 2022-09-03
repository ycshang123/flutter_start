import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({Key? key, this.title = "", this.content = ""}) : super(key: key);

  _showTimer(context) {
    var timer;

    timer = Timer.periodic(Duration(milliseconds: 1500), (t) {
      print('执行');
      Navigator.pop(context);
      //取消定时器
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 230,
          color: Colors.deepPurple.shade50,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.deepPurple.shade100,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: ListTile(
                  leading: const FlutterLogo(),
                  title: Text(
                    content,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
