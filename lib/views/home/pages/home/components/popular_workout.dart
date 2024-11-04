import '../../../../../all_utils.dart';
import '../../../../../models/workout_model.dart';
import '../../../../common_widgets/image_with_shadow.dart';

class PopularWorkout extends StatelessWidget {
  final WorkoutModel workout;
  final VoidCallback onPlay;

  const PopularWorkout({
    super.key,
    required this.workout,
    required this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    return ImageWithShadow(
      imagePath: workout.imagePath,
      radius: 23,
      width: 280,
      height: 194,
      child: Row(
        children: [
          Expanded(
            flex: 4,
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
                _Tag(
                  icon: Icons.local_fire_department_outlined,
                  text: '${workout.kcal} Kcal',
                ),
                const VerticalSpace(10),
                _Tag(
                  icon: Icons.timer_outlined,
                  text: '${workout.minutes} Min',
                ),
              ],
            ),
          ),
          Flexible(
            child: InkWell(
              onTap: onPlay,
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: AppColors.accent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.play_arrow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final IconData icon;
  final String text;

  const _Tag({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.black,
            size: 14,
          ),
          HorizontalSpace(6),
          Text(
            text,
            style: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.fontSizeBody,
            ),
          ),
        ],
      ),
    );
  }
}
