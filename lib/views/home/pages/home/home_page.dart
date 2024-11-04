import 'package:fitness_app_ui/views/home/pages/home/components/today_plan_list_view.dart';

import '../../../../all_utils.dart';
import 'components/popular_workouts_list_view.dart';
import 'components/search_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning 🔥',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Pramuditya Uzumaki',
            style: TextStyle(
              fontSize: AppSizes.fontSizeHeading,
              fontWeight: FontWeight.w800,
            ),
          ),
          const VerticalSpace(24),
          SearchTextField(onSearch: (v) {}),
          const VerticalSpace(24),
          const PopularWorkoutsListView(),
          const VerticalSpace(24),
          const TodayPlanListView(),
        ],
      ),
    );
  }
}
