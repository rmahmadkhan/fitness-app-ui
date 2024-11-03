import 'package:flutter/material.dart';

import '../../all_utils.dart';
import '../home/home_screen.dart';
import 'components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: WelcomeImage(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
              child: Column(
                children: [
                  const Text(
                    'Wherever You Are\nHealth Is Number One',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: AppSizes.fontSizeHeading,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'There is no instant way to a healthy life',
                    style: TextStyle(
                      fontSize: AppSizes.fontSizeSm,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const Spacer(),
                  MyElevatedButton(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName),
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
