import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:draba_task3/ui/showOptions/first.dart';
import 'package:draba_task3/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    FirstPage(),
    FirstPage(),
    FirstPage(),
    FirstPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: TitledBottomNavigationBar(
        reverse: true,
        items: <TitledNavigationBarItem>[
          TitledNavigationBarItem(
            icon: FontAwesome.home,
            title: Text('Home'),
            backgroundColor: Colors.black,
          ),
          TitledNavigationBarItem(
            icon: Icons.location_on,
            title: Text('Location'),
            backgroundColor: Colors.black,
          ),
          TitledNavigationBarItem(
            icon: Icons.add,
            title: Text('Add'),
            backgroundColor: Colors.greenAccent,
          ),
          TitledNavigationBarItem(
            icon: SimpleLineIcons.heart,
            title: Text('Like'),
            backgroundColor: Colors.black,
          ),
          TitledNavigationBarItem(
            icon: Icons.person,
            title: Text('Profile'),
            backgroundColor: Colors.black,
          ),
        ],
 
        currentIndex: _selectedIndex,
        activeColor: Colors.white,
        inactiveColor: Color(0xFF9D9D9D),
        indicatorColor: Colors.green,
        
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: _selectedIndex == 1 || _selectedIndex == 2 || _selectedIndex == 3 || _selectedIndex == 4
            ? Container(
                child: Center(
                  child: Text(
                    "App in Process....",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.lightGreen,
                        fontSize: 30.0),
                  ),
                ),
              )
            : Container(
                color: Colors.black,
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    TitleBar(),

                    _widgetOptions.elementAt(_selectedIndex),
                    
                  ],
                ),
              ),
      ),
    );
  }
}
