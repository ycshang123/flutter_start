import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  late String username = "";
  int sex = 1;
  String info = "";

  List hobby = [
    {"checked": false, "title": "吃饭"},
    {"checked": true, "title": "睡觉"},
    {"checked": true, "title": "写代码"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobby.length; i++) {
      tempList.add(Row(
        children: [
          Text(hobby[i]['title'] + ":"),
          Checkbox(
              value: hobby[i]['checked'],
              onChanged: (value) {
                setState(() {
                  hobby[i]["checked"] = value;
                });
              })
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("学员信息登记系统"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/from/demo")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "请输入用户信息"),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text("男"),
                Radio(value: 1, groupValue: sex, onChanged: _sexChanged),
                const Text("女"),
                Radio(value: 2, groupValue: sex, onChanged: _sexChanged)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: _getHobby(),
            ),
            TextField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: "描述信息",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  info = value;
                });
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: const Text("提交信息"),
                onPressed: () {
                  print(sex);
                  print(username);
                  print(hobby);
                },
              ),
            ),
            Text('$username,$sex,$hobby')
          ],
        ),
      ),
    );
  }
}
