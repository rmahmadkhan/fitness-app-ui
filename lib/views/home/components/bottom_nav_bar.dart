import 'package:google_nav_bar/google_nav_bar.dart';
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
            child: GNav(
              gap: 5,
              color: AppColors.white,
              activeColor: AppColors.primary,
              tabBackgroundColor: AppColors.accent,
              backgroundColor: AppColors.primary,
              tabBorderRadius: 32,
              style: GnavStyle.google,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              tabMargin: const EdgeInsets.all(14),
              selectedIndex: navBarProvider.selectedIndex,
              onTabChange: navBarProvider.updateSelectedIndex,
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.rocket_launch_outlined,
                  text: 'Explore',
                ),
                GButton(
                  icon: Icons.insert_chart_outlined,
                  text: 'Insights',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
