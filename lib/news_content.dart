import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import "package:html/dom.dart" as dom;

class NewsContent extends StatefulWidget {
  Map arguments;

  NewsContent({Key? key, required this.arguments}) : super(key: key);

  @override
  State<NewsContent> createState() => _NewsContentState(arguments);
}

class _NewsContentState extends State<NewsContent> {
  Map arguments;
  List _list = [];

  _NewsContentState(this.arguments);

  @override
  void initState() {
    super.initState();
    print(arguments);
    _getData();
  }

  _getData() async {
    var apiUrl =
        "http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${arguments['aid']}";
    var response = await Dio().get(apiUrl);
    setState(() {
      _list = json.decode(response.data)['result'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻详情"),
      ),
      body: ListView(
        children: [
          Text(
            "${_list.isNotEmpty ? _list[0]['title'] : ''}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 36),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Html(
              data: """
            ${_list.isNotEmpty ? _list[0]['content'] : ""}
            """,
              onLinkTap: (String? url, RenderContext context,
                  Map<String, String> attributes, dom.Element? element) {},
              style: {
                "html": Style(
                  backgroundColor: Colors.white,
                ),
                "p": Style(fontSize: FontSize.large),
                "table": Style(
                  backgroundColor: const Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                ),
                "tr": Style(
                  border: const Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
                "th": Style(
                    padding: const EdgeInsets.all(6),
                    backgroundColor: Colors.grey),
                "td": Style(
                    padding: const EdgeInsets.all(6),
                    alignment: Alignment.topLeft),
              },
              onImageTap: (String? url, RenderContext context,
                  Map<String, String> attributes, dom.Element? element) {},
            ),
          )
        ],
      ),
    );
  }
}
