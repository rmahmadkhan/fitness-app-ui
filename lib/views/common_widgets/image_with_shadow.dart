import '../../all_utils.dart';

class ImageWithShadow extends StatelessWidget {
  final String imagePath;
  final double radius;
  final double width;
  final double height;
  final Widget child;

  const ImageWithShadow({
    super.key,
    required this.imagePath,
    required this.radius,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    AppColors.primary.withOpacity(0.01),
                    AppColors.primary.withOpacity(0.3),
                    AppColors.primary.withOpacity(0.6),
                    AppColors.primary.withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26),
            child: child,
          ),
        ],
      ),
    );
  }
}
