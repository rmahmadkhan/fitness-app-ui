import 'package:flutter/material.dart';

import 'utils/theme/app_theme.dart';
import 'views/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
