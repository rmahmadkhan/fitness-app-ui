import '../../all_utils.dart';

class VerticalSpace extends StatelessWidget {
  final double of;

  const VerticalSpace(this.of, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: of);
  }
}
