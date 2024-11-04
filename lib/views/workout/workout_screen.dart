import '../../all_utils.dart';
import '../../models/workout_model.dart';
import 'components/exercise_card.dart';
import 'components/workout_header.dart';

class WorkoutScreen extends StatelessWidget {
  static const String routeName = '/workout';

  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: const Text('Workout'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WorkoutHeader(workout: WorkoutModel.quarantineWorkout),
                const VerticalSpace(56),
                Text(
                  'Lower Body Training',
                  style: TextStyle(
                    fontSize: AppSizes.fontSizeHeading,
                    fontWeight: FontWeight.w800,
                    color: AppColors.white,
                  ),
                ),
                const VerticalSpace(17),
                Text(
                  'The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don\'t use tools.',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
                const VerticalSpace(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rounds',
                      style: TextStyle(
                        fontSize: AppSizes.fontSizeTitle,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '1',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppSizes.fontSizeMd,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: '/8',
                            style: TextStyle(
                              fontSize: AppSizes.fontSizeBody,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(20),
                ListView.separated(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ExerciseCard(
                      workout: WorkoutModel.mockData[0],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const VerticalSpace(16);
                  },
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyElevatedButton(
                onTap: () {},
                text: 'Lets Workout',
                backgroundColor: AppColors.accent,
                foregroundColor: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
