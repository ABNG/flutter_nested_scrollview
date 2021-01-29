import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _tabs = ["Home", "Profile", "MyAccount"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
//                expandedHeight: 230,
                title: Text("Application"),
                floating: true, //uncomment to hide appbar
                snap: true, //uncomment to hide appbar
                pinned: true,
//                flexibleSpace: FlexibleSpaceBar(
////                  title: Text("Expanded Text"),
//                  background: Image.network(
//                    "https://www.environmentalscience.org/wp-content/uploads/2015/01/Roads-300x300.jpg",
//                    fit: BoxFit.cover,
//                  ),
//                ),
                bottom: TabBar(
                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => ListTile(
                  title: Container(
                      height: 80,
                      color: Colors.primaries[index % Colors.primaries.length],
                      alignment: Alignment.center,
                      child: Text('Item $index')),
                ),
                itemCount: 30,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => ListTile(
                  title: Container(
                      height: 80,
                      color: Colors.primaries[index % Colors.primaries.length],
                      alignment: Alignment.center,
                      child: Text('Item $index')),
                ),
                itemCount: 30,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => ListTile(
                  title: Container(
                      height: 80,
                      color: Colors.primaries[index % Colors.primaries.length],
                      alignment: Alignment.center,
                      child: Text('Item $index')),
                ),
                itemCount: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
