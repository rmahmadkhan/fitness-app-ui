import '../all_utils.dart';

class WorkoutModel {
  final String name;
  final int kcal;
  final int minutes;
  final String imagePath;

  const WorkoutModel({
    required this.name,
    required this.kcal,
    required this.minutes,
    required this.imagePath,
  });

  static List<WorkoutModel> get mockData => [
        WorkoutModel(
          name: 'Lower Body Training',
          imagePath: AppImages.workout1,
          kcal: 300,
          minutes: 30,
        ),
        WorkoutModel(
          name: 'Hand Training',
          imagePath: AppImages.handTraining,
          kcal: 600,
          minutes: 40,
        ),
      ];
}
