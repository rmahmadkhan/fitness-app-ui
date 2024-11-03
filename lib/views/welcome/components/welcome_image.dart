import 'package:flutter/material.dart';

import '../../../all_utils.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          height: MediaQuery.of(context).size.height,
          AppImages.intro,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.white.withOpacity(0.01),
                  AppColors.white.withOpacity(0.3),
                  AppColors.white.withOpacity(0.5),
                  AppColors.white.withOpacity(0.7),
                  AppColors.white,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
