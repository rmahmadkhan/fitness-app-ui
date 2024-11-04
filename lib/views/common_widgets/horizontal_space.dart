import '../../all_utils.dart';

class HorizontalSpace extends StatelessWidget {
  final double of;

  const HorizontalSpace(this.of, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: of);
  }
}
