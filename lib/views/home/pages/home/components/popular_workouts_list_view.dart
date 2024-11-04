import 'package:fitness_app_ui/views/workout/workout_screen.dart';

import '../../../../../all_utils.dart';
import '../../../../../models/workout_model.dart';
import '../../../components/section_title.dart';
import 'popular_workout.dart';

class PopularWorkoutsListView extends StatelessWidget {
  const PopularWorkoutsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(text: 'Popular Workouts'),
        const VerticalSpace(16),
        SizedBox(
          height: 194,
          child: ListView.separated(
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => PopularWorkout(
              workout: WorkoutModel.mockData[index],
              onPlay: () {
                Navigator.pushNamed(context, WorkoutScreen.routeName);
              },
            ),
            separatorBuilder: (context, index) => const HorizontalSpace(20),
          ),
        ),
      ],
    );
  }
}
