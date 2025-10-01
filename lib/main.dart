import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runway_fashion/Core/cubit/theme_cubit.dart';
import 'package:runway_fashion/Core/utils/app_route.dart';
import 'package:runway_fashion/Core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRoute.router,
            theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
            darkTheme: AppTheme.darkTheme,
            themeMode: state,
          );
        },
      ),
    );
  }
}
