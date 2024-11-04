import '../../../../../all_utils.dart';
import '../../../components/section_title.dart';
import 'challenge_card.dart';

class ChallengeListView extends StatelessWidget {
  const ChallengeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(text: 'Challenge'),
        const VerticalSpace(16),
        Row(
          children: [
            ChallengeCard(
              name: 'Plank',
              icon: Icons.local_fire_department_outlined,
              textColor: AppColors.primary,
              backgroundColor: AppColors.accent,
              iconColor: AppColors.white.withOpacity(0.7),
            ),
            const HorizontalSpace(16),
            ChallengeCard(
              name: 'Sprint',
              icon: Icons.directions_run_outlined,
              textColor: AppColors.white,
              backgroundColor: AppColors.primary,
              iconColor: AppColors.secondaryLight,
            ),
            const HorizontalSpace(16),
            ChallengeCard(
              name: 'Squat',
              icon: Icons.water_drop_outlined,
              textColor: AppColors.primary,
              backgroundColor: AppColors.white,
              iconColor: AppColors.accent,
            ),
          ],
        ),
      ],
    );
  }
}
