import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/app_theme/app_theme.dart';
import 'package:railway_checks_assignment/features/auth/presentation/login_screen.dart';
import 'package:railway_checks_assignment/features/home/presentation/screens/home_screen.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/screens/platform_activities.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/screens/station_activities.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      routes: {
        "/": (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/station_activities': (context) => StationActivitiesRecordScreen(),
        '/platform_activities': (context) => PlatformActivitiesRecordScreen(),
      },
    );
  }
}
