import 'package:fitness_app_ui/models/enums/difficulty_level.dart';

import '../all_utils.dart';

class WorkoutModel {
  final String name;
  final int kcal;
  final int minutes;
  final String imagePath;
  final DifficultyLevel difficulty;

  const WorkoutModel({
    required this.name,
    required this.kcal,
    required this.minutes,
    required this.imagePath,
    this.difficulty = DifficultyLevel.beginner,
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

  static get quarantineWorkout => WorkoutModel(
        name: 'Best Quarantine\nWorkout',
        kcal: 500,
        minutes: 45,
        imagePath: AppImages.kneePushUp,
      );

  static List<WorkoutModel> get bestForYou => [
        WorkoutModel(
          name: 'Belly fat burner',
          kcal: 300,
          minutes: 10,
          imagePath: AppImages.lowerBody,
          difficulty: DifficultyLevel.beginner,
        ),
        WorkoutModel(
          name: 'Loose Fat',
          kcal: 400,
          minutes: 10,
          imagePath: AppImages.workout1,
          difficulty: DifficultyLevel.beginner,
        ),
        WorkoutModel(
          name: 'Plank',
          kcal: 100,
          minutes: 5,
          imagePath: AppImages.workout1,
          difficulty: DifficultyLevel.advanced,
        ),
        WorkoutModel(
          name: 'Build Biceps',
          kcal: 800,
          minutes: 30,
          imagePath: AppImages.workout1,
          difficulty: DifficultyLevel.intermediate,
        ),
      ];
}
