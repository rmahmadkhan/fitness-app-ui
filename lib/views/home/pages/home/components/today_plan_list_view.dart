import '../../../../../all_utils.dart';
import '../../../../../models/exercise_model.dart';
import '../../../components/section_title.dart';
import 'exercise_progress.dart';

class TodayPlanListView extends StatelessWidget {
  const TodayPlanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(text: 'Today Plan'),
        const VerticalSpace(16),
        ListView.separated(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              ExerciseProgress(exercise: ExerciseModel.mockData[index]),
          separatorBuilder: (context, index) => const HorizontalSpace(20),
        ),
      ],
    );
  }
}
