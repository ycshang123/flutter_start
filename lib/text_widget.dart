import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("文本组件"),
      ),
      body: Container(
          height: 300.0,
          width: 200.0,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.fromLTRB(100, 30, 5, 0),
          //外围装饰
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.blue, width: 2.0),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          //旋转
          transform: Matrix4.rotationZ(0.2),
          //对齐
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () => {Navigator.pushNamed(context, "/image"), print("点击")},
            child: const Text(
              "大家好",
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textScaleFactor: 1.8,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.dashed,
                  letterSpacing: 5.0),
            ),
          )),
    );
  }
}
