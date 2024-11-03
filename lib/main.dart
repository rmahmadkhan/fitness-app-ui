import 'package:flutter/material.dart';

import 'utils/routes.dart';
import 'utils/theme/app_theme.dart';
import 'views/welcome/welcome_screen.dart';

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
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
