import 'package:flutter/material.dart';
import 'package:watch/pages/drawer_page.dart';
import 'package:watch/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter AppBar"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.start),
            Icon(Icons.person),
            Icon(Icons.chat_sharp),
          ]),
        ),
        drawer: DrawerPage(),
        body: TabBarView(children: [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),

        ]),
      ),
    );
  }
}
