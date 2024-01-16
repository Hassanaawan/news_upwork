import 'package:flutter/material.dart';
import 'package:news_upwork/homeScreen.dart';
import 'package:news_upwork/sizeConfigh.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: News',
      style: optionStyle,
    ),
    Text(
      'Index 3: Shows',
      style: optionStyle,
    ),
    Text(
      'Index 2: Signs',
      style: optionStyle,
    ),
    Text(
      'Index 2: Stories',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/Today.png'),
              height: SizeConfig.blockSizeVertical * 3,
            ),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/News.png'),
              height: SizeConfig.blockSizeVertical * 3,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/Shows.png'),
              height: SizeConfig.blockSizeVertical * 3,
            ),
            label: 'Shows',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/Signs.png'),
              height: SizeConfig.blockSizeVertical * 3,
            ),
            label: 'Signs',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/Stories.png'),
              height: SizeConfig.blockSizeVertical * 3,
            ),
            label: 'Stories',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
