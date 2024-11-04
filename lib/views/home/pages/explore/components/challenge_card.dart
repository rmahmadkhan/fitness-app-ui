import '../../../../../all_utils.dart';

class ChallengeCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color textColor;
  final Color backgroundColor;
  final Color iconColor;

  const ChallengeCard({
    super.key,
    required this.name,
    required this.icon,
    required this.textColor,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: backgroundColor,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 0,
            bottom: 5,
            child: Icon(
              icon,
              color: iconColor,
              size: 72,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              '$name\nChallenge',
              style: TextStyle(
                color: textColor,
                fontSize: AppSizes.fontSizeSm,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
