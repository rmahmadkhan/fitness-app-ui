import 'package:flutter/material.dart';

import '../views/home/pages/explore_page.dart';
import '../views/home/pages/home/home_page.dart';
import '../views/home/pages/insights_page.dart';
import '../views/home/pages/profile_page.dart';

class NavBarProvider extends ChangeNotifier {
  static const _pages = [
    HomePage(),
    ExplorePage(),
    InsightsPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  Widget get selectedPage => _pages[_selectedIndex];

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
