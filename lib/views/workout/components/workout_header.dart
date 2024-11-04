import '../../../all_utils.dart';
import '../../../models/workout_model.dart';

class WorkoutHeader extends StatelessWidget {
  final WorkoutModel workout;

  const WorkoutHeader({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: AppColors.secondaryDark,
            borderRadius: BorderRadius.circular(23),
            image: DecorationImage(
              image: AssetImage(workout.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primary.withOpacity(0.01),
                  AppColors.primary.withOpacity(0.3),
                  AppColors.primary.withOpacity(0.6),
                  AppColors.primary.withOpacity(0.9),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -32,
          child: _WorkoutDetails(workout.minutes, workout.kcal),
        ),
      ],
    );
  }
}

class _WorkoutDetails extends StatelessWidget {
  final double minutes;
  final int kcal;

  const _WorkoutDetails(this.minutes, this.kcal);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
        border: Border.symmetric(
          vertical: BorderSide(
            color: AppColors.accent,
            width: 0.3,
          ),
          horizontal: BorderSide(
            color: AppColors.accent,
            width: 0.1,
          ),
        ),
      ),
      child: Row(
        children: [
          _buildDetails(Icons.timer_outlined, 'Time', '$minutes min'),
          const HorizontalSpace(30),
          SizedBox(
            child: VerticalDivider(
              color: AppColors.white.withOpacity(0.3),
            ),
          ),
          const HorizontalSpace(30),
          _buildDetails(
            Icons.local_fire_department_outlined,
            'Burn',
            '$kcal kcal',
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(IconData icon, String title, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            icon,
            size: 24,
            color: AppColors.primary,
          ),
        ),
        const HorizontalSpace(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 10, color: AppColors.white),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.accent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
