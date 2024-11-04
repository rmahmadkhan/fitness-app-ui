import '../../../../../all_utils.dart';
import '../../../../../models/enums/difficulty_level.dart';
import '../../../../../models/exercise_model.dart';

class ExerciseProgress extends StatelessWidget {
  final ExerciseModel exercise;
  final VoidCallback? onTap;

  const ExerciseProgress({
    super.key,
    required this.exercise,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.secondaryLight,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(exercise.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const HorizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      exercise.name,
                      style: TextStyle(
                        fontSize: AppSizes.fontSizeMd,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalSpace(4),
                    Text(
                      '${exercise.goal} ${exercise.name.toSentenceCase()} a day',
                      style: TextStyle(
                        fontSize: AppSizes.fontSizeSm,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const VerticalSpace(14),
                    Stack(
                      children: [
                        LinearProgressIndicator(
                          value: exercise.done / exercise.goal,
                          backgroundColor:
                              AppColors.textSecondary.withOpacity(0.2),
                          valueColor: AlwaysStoppedAnimation(AppColors.accent),
                          minHeight: 16,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        Align(
                          alignment: Alignment.lerp(
                                  Alignment.topLeft,
                                  Alignment.center,
                                  exercise.done / exercise.goal) ??
                              Alignment.centerLeft,
                          child: Text(
                            '${((exercise.done / exercise.goal) * 100).toInt()}%',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(6)),
            ),
            child: Text(
              exercise.difficulty.text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
