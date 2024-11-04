import '../../../../../all_utils.dart';
import '../../../../../models/enums/difficulty_level.dart';
import '../../../../../models/workout_model.dart';

class WorkoutCard extends StatelessWidget {
  final WorkoutModel workout;
  final VoidCallback onTap;

  const WorkoutCard({
    super.key,
    required this.workout,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(workout.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const HorizontalSpace(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  workout.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: AppSizes.fontSizeSm,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                _Tag('${workout.minutes} min'),
                const VerticalSpace(4),
                _Tag(workout.difficulty.text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;

  const _Tag(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.greyLight,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.primary.withOpacity(0.7),
          fontSize: AppSizes.fontSizeBody,
        ),
      ),
    );
  }
}
