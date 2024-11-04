import '../../../../../all_utils.dart';
import '../../../../../models/workout_model.dart';
import '../../../../common_widgets/image_with_shadow.dart';

class SeeMoreWorkoutCard extends StatelessWidget {
  final WorkoutModel workout;
  final VoidCallback onSeeMore;

  const SeeMoreWorkoutCard({
    super.key,
    required this.workout,
    required this.onSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    return ImageWithShadow(
      imagePath: workout.imagePath,
      radius: 23,
      width: double.infinity,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workout.name,
            style: TextStyle(
              fontSize: AppSizes.fontSizeHeading,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: onSeeMore,
            child: const Row(
              children: [
                Text(
                  'See more',
                  style: TextStyle(
                    color: AppColors.accent,
                    fontSize: AppSizes.fontSizeSm,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HorizontalSpace(5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                  color: AppColors.accent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
