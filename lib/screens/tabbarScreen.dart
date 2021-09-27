import 'package:countdown/screens/modal_bottom_sheet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../screens/home_screen.dart';
import '../screens/setting_screen.dart';
import '../widgets/customized_appbar.dart';
import '../provider/locale_provider.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final provider = Provider.of<LocaleProvider>(context, listen: false);

      provider.clearLocale();
    });
    // Future.delayed(
    //   Duration.zero,
    //   () {},
    // );
  }

  int _selectedpageIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedpageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var translation = AppLocalizations.of(context)!;
    _pages = [
      {
        'page': HomeScreen(),
        'title': '${translation.countdowns}',
        'hint': '${translation.homeDescription}',
      },
      {
        'page': SettingsScreen(),
        'title': '${translation.settings}',
        'hint': '${translation.settingsdescription}',
      },
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
          _pages[_selectedpageIndex]['title'],
          _pages[_selectedpageIndex]['hint'],
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
          onPressed: () {
            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              context: context,
              builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.90,
                  child: modalBottomSheetScreen()),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: _pages[_selectedpageIndex]['page'] as Widget,
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
