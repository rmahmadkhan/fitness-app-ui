import '../../../../all_utils.dart';
import '../../../../models/workout_model.dart';
import '../../../workout/workout_screen.dart';
import 'components/challenge_list_view.dart';
import 'components/see_more_workout_card.dart';
import 'components/workout_grid_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          SeeMoreWorkoutCard(
            workout: WorkoutModel.quarantineWorkout,
            onSeeMore: () {
              Navigator.pushNamed(context, WorkoutScreen.routeName);
            },
          ),
          const VerticalSpace(24),
          WorkoutGridView(
            title: 'Best for you',
            workouts: WorkoutModel.bestForYou,
          ),
          const VerticalSpace(24),
          const ChallengeListView(),
          const VerticalSpace(24),
          WorkoutGridView(
            title: 'Fast Warmup',
            workouts: WorkoutModel.bestForYou,
          ),
        ],
      ),
    );
  }
}
