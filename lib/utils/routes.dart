import 'package:flutter/material.dart';

import '../views/home/home_screen.dart';
import '../views/welcome/welcome_screen.dart';
import '../views/workout/workout_screen.dart';

/// All application routes will be defined here
final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  WorkoutScreen.routeName: (context) => const WorkoutScreen(),
};
