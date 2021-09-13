import 'package:countdown/screens/home_screen.dart';
import 'package:countdown/screens/settings_screen.dart';
import 'package:countdown/widgets/customized_appbar.dart';
import 'package:flutter/material.dart';



class TabBarScreen extends StatefulWidget {
 
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Map<String, Object>> _pages;

  @override
  void initState() {
     _pages = [
      {
        'page': HomeScreen(),
        'title': 'Countdowns',
        'hint': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
      },
      {
        'page': SettingsScreen(),
        'title': 'Settings',
        'hint': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',

      }
    ];
    super.initState();
  }

  int _selectedpageIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedpageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100), 
        child:CustomAppbar(
        _pages[_selectedpageIndex]['title'], _pages[_selectedpageIndex]['hint']),
      ),
     
      body: _pages[_selectedpageIndex]['page'],
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedpageIndex,
        onTap: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}