import '../../../all_utils.dart';
import '../../../models/workout_model.dart';

class ExerciseCard extends StatelessWidget {
  final WorkoutModel workout;

  const ExerciseCard({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: AppColors.secondaryDark,
      ),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(13),
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
                    fontSize: AppSizes.fontSizeMd,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                const VerticalSpace(6),
                Text(
                  getTimeFromMinutes(workout.minutes),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: AppSizes.fontSizeSm,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: AppColors.accent,
                  size: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getTimeFromMinutes(double minutes) {
    final int totalSeconds = (minutes * 60).toInt();
    final int hours = totalSeconds ~/ 3600;
    final int remainingSeconds = totalSeconds % 3600;
    final int min = remainingSeconds ~/ 60;
    final int secs = remainingSeconds % 60;

    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${min.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    } else {
      return '${min.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    }
  }
}
