import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../screens/home_screen.dart';
import '../screens/setting_screen.dart';
import '../widgets/customized_appbar.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Map<String, Object>> _pages;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        _pages = [
          {
            'page': HomeScreen(),
            'title': '${AppLocalizations.of(context).countdowns}',
            'hint': '${AppLocalizations.of(context).homeDescription}',
          },
          {
            'page': SettingsScreen(),
            'title': '${AppLocalizations.of(context).settings}',
            'hint': '${AppLocalizations.of(context).settingsdescription}',
          },
        ];
      },
    );
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(_pages[_selectedpageIndex]['title'],
            _pages[_selectedpageIndex]['hint']),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
          onPressed: () {
            // Add your onPressed code here!
            //  Navigator.push(context, )
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: _pages[_selectedpageIndex]['page'],
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 10,
          backgroundColor: Theme.of(context).backgroundColor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 28,
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
      ),
    );
  }
}
