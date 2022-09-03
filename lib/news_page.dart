import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final List _list = [];
  int _page = 1;

  //判断有没有数据
  bool hasMore = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _getData();
    //  监听滚动事件
    _scrollController.addListener(() {
      //获取滚动条下拉的距离
      print(_scrollController.position.pixels);
      //  获取整个页面的高度
      print(_scrollController.position.maxScrollExtent);
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 40) {
        _getData();
      }
    });
  }

  void _getData() async {
    if (hasMore) {
      var apiUrl =
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$_page";
      var response = await Dio().get(apiUrl);
      var res = json.decode(response.data)["result"];

      setState(() {
        _list.addAll(res);
        _page++;
      });

      //  判断是否是最后一页
      if (res.length < 20) {
        setState(() {
          hasMore = false;
        });
      }
    }
  }

  //下拉刷新
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {
      print("请求数据完成");
      _getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻列表"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/row")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: _list.isNotEmpty
          ? RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    if (index == _list.length - 1) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              "${_list[index]['title']}",
                              maxLines: 1,
                            ),
                          ),
                          const Divider(),
                          _getMoreWidget()
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              "${_list[index]['title']}",
                              maxLines: 1,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "/news-content",
                                  arguments: {"aid": _list[index]['aid']});
                            },
                          ),
                          const Divider()
                        ],
                      );
                    }
                  }),
            )
          : _getMoreWidget(),
    );
  }

//  加载中的圈圈
  Widget _getMoreWidget() {
    if (hasMore) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "加载中……",
                style: TextStyle(fontSize: 16.0),
              ),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    } else {
      return const Center(
        child: Text("我是有底线的"),
      );
    }
  }
}
