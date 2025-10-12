import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runway_fashion/Core/cache_helper/cache_helper.dart';
import 'package:runway_fashion/Core/cache_helper/cache_helper_keys.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light) {
    _loadTheme();
  }
  void toggleTheme() {
    if (state == ThemeMode.light) {
      emit(ThemeMode.dark);
      CacheHelper.saveData(key: CacheHelperKeys.isDark, value: true);
    } else {
      emit(ThemeMode.light);
      CacheHelper.saveData(key: CacheHelperKeys.isDark, value: false);
    }
  }

  void _loadTheme() {
    final isDark = CacheHelper.getData(key: CacheHelperKeys.isDark);
    if (isDark != null) {
      if (isDark == true) {
        emit(ThemeMode.dark);
      } else {
        emit(ThemeMode.light);
      }
    } else {
      return;
    }
  }
}
