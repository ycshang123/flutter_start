import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_start/aspectRatio_demo.dart';
import 'package:flutter_start/button_demo.dart';
import 'package:flutter_start/column_demo.dart';
import 'package:flutter_start/date_demo.dart';
import 'package:flutter_start/expanded_demo.dart';
import 'package:flutter_start/girdView_base.dart';
import 'package:flutter_start/layout_card.dart';
import 'package:flutter_start/layout_demo.dart';
import 'package:flutter_start/listTile_base.dart';
import 'package:flutter_start/listView_base.dart';
import 'package:flutter_start/padding_demo.dart';
import 'package:flutter_start/pages/tabs/from_page.dart';
import 'package:flutter_start/pages/tabs_demo.dart';
import 'package:flutter_start/row_demo.dart';
import 'package:flutter_start/stack_align.dart';
import 'package:flutter_start/stack_positioned.dart';
import 'package:flutter_start/text_widget.dart';
import 'package:flutter_start/wrap_demo.dart';

import 'card_demo.dart';
import 'date_picker_demo.dart';
import 'dialog_demo.dart';
import 'floating_action_button.dart';
import 'from_demo.dart';
import 'from_page.dart';
import 'gridView_builder.dart';
import 'http_demo.dart';
import 'image_widget.dart';
import 'listView_dynamic.dart';
import 'news_content.dart';
import 'news_page.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var onGenerateRoute = (RouteSettings settings) {
    final Map<String, Function> routes = {
      "/text": (context) => const TextDemo(),
      "/image": (context) => const ImageDemo(),
      "/listview/base": (context) => const ListDemo1(),
      "/listview/hor": (context) => const ListDemo2(),
      "/listview/dyn": (context) => ListDemo3(),
      "/gridView/base": (context) => const GridView1(),
      "/gridView/build": (context) => const GridView2(),
      "/padding": (context) => const PaddingDemo(),
      "/row": (context) => const RowDemo(),
      "/column": (context) => const ColumnDemo(),
      "/expanded": (context) => const ExpandedDemo(),
      "/layout": (context) => const LayoutDemo(),
      "/stack/align": (context) => const StackDemo(),
      "/stack/position": (context) => const StackDemo1(),
      "/aspectRatio": (context) => const AspectRatioDemo(),
      "/card": (context) => const CardDemo(),
      "/card/layout": (context) => const CardLayout(),
      "/wrap": (context) => const WrapDemo(),
      "/tab": (context) => const Tabs(),
      "/from": (context, {arguments}) => FromDemo(arguments: arguments),
      "/button": (context) => const ButtonDemo(),
      "/floating": (context) => const FloatingActionButtonDemo(),
      "/from/widget": (context) => const FormWidget(),
      "/from/demo": (context) => const FormDemo(),
      "/date": (context) => const DateDemo(),
      "/datepicker": (context) => const DatePickerPubDemo(),
      "/alertDialog": (context) => const DialogDemo(),
      // "/dialog": (context) => MyDialog(),
      "/http": (context) => HttpDemo,
      // "/appBar": (context) => const AppBarPage()
      '/news-content': (context, {arguments}) =>
          NewsContent(arguments: arguments),
    };

    final String? name = settings.name;
    final Function? pageContentBuilder = routes[name];
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments),
        );
        return route;
      } else {
        final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context),
        );
        return route;
      }
    }
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //消除debug标签
      debugShowCheckedModeBanner: false,
      title: '我是一个标题',
      // home: Scaffold(
      //   appBar: AppBar(
      //     //标题居中
      //     centerTitle: true,
      //     title: const Text("软件2176 Web3班"),
      //     //阴影
      //     elevation: 20.0,
      //   ),
      //   body: const MyHome(),
      // ),
      theme: ThemeData(
        //设置主题色
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      home: const NewsPage(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      child: const Text(
        "我是Dart文本",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black38,
        ),
      ),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.favorite,
          color: Colors.orangeAccent,
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
