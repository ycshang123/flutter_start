import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({Key? key}) : super(key: key);

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  _alertDialog() async {
    var result = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("提示信息!"),
          content: const Text("确定要删除吗?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
                child: const Text("取消")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, "OK");
                },
                child: const Text("确定"))
          ],
        );
      },
    );
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("选择内容"),
            children: [
              SimpleDialogOption(
                child: const Text("Option A"),
                onPressed: () {
                  Navigator.pop(context, "A");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option B"),
                onPressed: () {
                  Navigator.pop(context, "B");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option C"),
                onPressed: () {
                  Navigator.pop(context, "C");
                },
              ),
              const Divider(),
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(
              children: [
                ListTile(
                  title: const Text("分享A"),
                  onTap: () {
                    Navigator.pop(context, "分享A");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("分享B"),
                  onTap: () {
                    Navigator.pop(context, "分享B");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("分享C"),
                  onTap: () {
                    Navigator.pop(context, "分享C");
                  },
                ),
                const Divider(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("对话框"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/http")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await _alertDialog();
                },
                child: const Text("Simple Dialog")),
            ElevatedButton(
                onPressed: () async {
                  await _modelBottomSheet();
                },
                child: const Text("Model Bottom Sheet")),
          ],
        ),
      ),
    );
  }
}
