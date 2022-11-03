import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tabs Demo'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: CircleTabIndicator(color: Colors.green, radius: 4),
            isScrollable: true,
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
          ],
        ),
      ),
    );
    // Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: DefaultTabController(
    //     length: 10,
    //     initialIndex: 0,
    //     child: Material(
    //       child: TabBar(
    //         isScrollable: true,
    //         indicatorColor: Colors.green,
    //         tabs: [
    //           Tab(
    //             text: "Home",
    //           ),
    //           Tab(
    //             text: "Work",
    //           ),
    //           Tab(
    //             text: "Play",
    //           ),
    //           Tab(
    //             text: "Home",
    //           ),
    //           Tab(
    //             text: "Work",
    //           ),
    //           Tab(
    //             text: "Play",
    //           ),
    //           Tab(
    //             text: "Home",
    //           ),
    //           Tab(
    //             text: "Work",
    //           ),
    //           Tab(
    //             text: "Play",
    //           ),
    //           Tab(
    //             text: "Play",
    //           ),
    //         ],
    //         labelColor: Colors.black,
    //         indicator: DotIndicator(
    //           color: Colors.black,
    //           distanceFromCenter: 16,
    //           radius: 3,
    //           paintingStyle: PaintingStyle.fill,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
  
}

