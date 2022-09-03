import 'package:flutter/cupertino.dart';

class SettingDemo extends StatefulWidget {
  const SettingDemo({Key? key}) : super(key: key);

  @override
  State<SettingDemo> createState() => _SettingDemoState();
}

class _SettingDemoState extends State<SettingDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("设置"),
    );
  }
}
