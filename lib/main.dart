import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/app_route.dart';
import 'package:runway_fashion/Core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

Color getColorBasedOnTheme(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black;
}
