enum DifficultyLevel {
  beginner,
  intermediate,
  advanced,
}

extension DifficultyLevelExtension on DifficultyLevel {
  String get text {
    switch (this) {
      case DifficultyLevel.beginner:
        return 'Beginner';
      case DifficultyLevel.intermediate:
        return 'Intermediate';
      case DifficultyLevel.advanced:
        return 'Advanced';
    }
  }
}
