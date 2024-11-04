import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../all_utils.dart';
import '../../../providers/nav_bar_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarProvider>(
      builder: (context, navBarProvider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: AppColors.white,
              selectedItemColor: AppColors.primary,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.primary,
              items: [
                BottomNavigationBarItem(
                  activeIcon: _ActiveIcon(
                    icon: Icons.home_filled,
                    label: 'Home',
                  ),
                  icon: const Icon(Icons.home_filled),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: _ActiveIcon(
                    icon: Icons.rocket_launch_outlined,
                    label: 'Explore',
                  ),
                  icon: const Icon(Icons.rocket_launch_outlined),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  activeIcon: _ActiveIcon(
                    icon: Icons.insert_chart_outlined,
                    label: 'Insights',
                  ),
                  icon: const Icon(Icons.insert_chart_outlined),
                  label: 'Insights',
                ),
                BottomNavigationBarItem(
                  activeIcon: _ActiveIcon(
                    icon: Icons.person_2_outlined,
                    label: 'Profile',
                  ),
                  icon: const Icon(Icons.person_2_outlined),
                  label: 'Profile',
                ),
              ],
              currentIndex: navBarProvider.selectedIndex,
              onTap: navBarProvider.updateSelectedIndex,
            ),
          ),
        );
      },
    );
  }
}

class _ActiveIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActiveIcon({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98.0,
      height: 36.0,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(43),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.primary),
          Text(
            label,
            style: TextStyle(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
