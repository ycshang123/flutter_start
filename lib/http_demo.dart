import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class HttpDemo extends StatefulWidget {
  const HttpDemo({Key? key}) : super(key: key);

  @override
  State<HttpDemo> createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    _getData1();
  }

  _getData() async {
    var apiUrl = Uri.parse("https://jdmall.itying.com/api/pcate");
    var response = await http.get(apiUrl);
    print(response);
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      setState(() {
        _list = json.decode(response.body)['result'];
      });
    } else {
      print(response.statusCode);
    }
  }

  _getData1() async {
    var response = await Dio().get("https://jdmall.itying.com/api/pcate");
    print(response.data);
    print(response.statusCode);
    if (response.statusCode == 200) {
      setState(() {
        _list = response.data["result"];
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("请求数据Demo"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/row")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: _list.isNotEmpty
          ? ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_list[index]['title']),
                );
              },
            )
          : const Text(""),
    );
  }
}
