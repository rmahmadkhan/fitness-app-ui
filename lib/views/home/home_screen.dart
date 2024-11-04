import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/nav_bar_provider.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavBarProvider(),
      child: Scaffold(
        body: Consumer<NavBarProvider>(
          builder: (context, navBarProvider, child) {
            return navBarProvider.selectedPage;
          },
        ),
        bottomNavigationBar: SafeArea(
          child: BottomNavBar(),
        ),
      ),
    );
  }
}
