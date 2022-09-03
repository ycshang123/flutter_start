import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: "Search",
              onPressed: () {
                print("menu Pressed");
              },
            ),
            title: const Text("Flutter AppBar"),
            actions: [
              IconButton(
                  onPressed: () {
                    print('Search Pressed');
                  },
                  tooltip: "Search",
                  icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/button");
                  },
                  tooltip: "more_horiz",
                  icon: Icon(Icons.more_horiz)),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  ListTile(
                    title: Text("这是第一个tab"),
                  ),
                  ListTile(
                    title: Text("这是第一个tab"),
                  ),
                  ListTile(
                    title: Text("这是第一个tab"),
                  ),
                ],
              ),
              ListView(
                children: const [
                  ListTile(
                    title: Text("这是第二个tab"),
                  ),
                  ListTile(
                    title: Text("这是第二个tab"),
                  ),
                  ListTile(
                    title: Text("这是第二个tab"),
                  ),
                ],
              )
            ],
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("ycshang"),
                  accountEmail: const Text("3511234359@qq.com"),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://git.poker/ycshang123/image-hosting/blob/master/avatar.4nd84incufw0.webp?raw=true"),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover),
                  ),
                  otherAccountsPictures: [
                    Image.network(
                      "https://www.itying.com/images/flutter/3.png",
                    ),
                    Image.network(
                      "https://www.itying.com/images/flutter/4.png",
                    ),
                    Image.network(
                      "https://www.itying.com/images/flutter/5.png",
                    ),
                  ],
                ),
                const ListTile(
                  title: Text("个人中心"),
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                ),
                Divider(),
                const ListTile(
                  title: Text("系统设置"),
                  leading: CircleAvatar(
                    child: Icon(Icons.settings),
                  ),
                )
              ],
            ),
          ),
          endDrawer: const Drawer(
            child: Text("右侧侧边栏"),
          ),
        ),
      ),
    );
  }
}
