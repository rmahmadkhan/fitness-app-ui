import '../../../../../all_utils.dart';
import '../../../../../models/workout_model.dart';
import '../../../components/section_title.dart';
import 'workout_card.dart';

class WorkoutGridView extends StatelessWidget {
  final String title;
  final List<WorkoutModel> workouts;

  const WorkoutGridView({
    super.key,
    required this.title,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(text: title),
        const VerticalSpace(16),
        SizedBox(
          height: 190,
          child: GridView.builder(
            itemCount: workouts.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 16,
              mainAxisExtent: 220,
            ),
            itemBuilder: (context, index) {
              return WorkoutCard(
                workout: workouts[index],
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
