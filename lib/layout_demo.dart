import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout 组件"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/stack/align")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                      child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 1.8,
                      mainAxisSpacing: 8,
                      children: [
                        Image.network(
                          "https://www.itying.com/images/flutter/1.png",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "https://www.itying.com/images/flutter/2.png",
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
