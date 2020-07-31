import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:draba_task3/ui/showOptions/hot.dart';
import 'package:draba_task3/ui/showOptions/news.dart';
import 'package:draba_task3/ui/showOptions/Event.dart';
import 'package:draba_task3/ui/showOptions/Special.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.white70,
              alignment: Alignment.center,
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.black54,
                labelColor: Colors.black54,
                unselectedLabelColor: Colors.white70,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(SimpleLineIcons.fire),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Hot',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(SimpleLineIcons.list),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'News',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(SimpleLineIcons.event),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Event',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Special',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  HotTab(),
                  NewsTab(),
                  EventTab(),
                  SpecialTab()
                ],
              ),
            )
          ]),
    );
  }
}
