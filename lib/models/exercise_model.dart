import '../all_utils.dart';
import 'enums/difficulty_level.dart';

class ExerciseModel {
  final String name;
  final String imagePath;
  final int goal;
  final int done;
  final DifficultyLevel difficulty;

  const ExerciseModel({
    required this.name,
    required this.imagePath,
    required this.goal,
    required this.done,
    required this.difficulty,
  });

  static List<ExerciseModel> get mockData => [
        ExerciseModel(
          name: 'Push Up',
          imagePath: AppImages.pushUp,
          goal: 100,
          done: 50,
          difficulty: DifficultyLevel.intermediate,
        ),
        ExerciseModel(
          name: 'Sit Up',
          imagePath: AppImages.sitUp,
          goal: 20,
          done: 12,
          difficulty: DifficultyLevel.beginner,
        ),
        ExerciseModel(
          name: 'Knee Push Up',
          imagePath: AppImages.kneePushUp,
          goal: 80,
          done: 20,
          difficulty: DifficultyLevel.beginner,
        ),
      ];
}
