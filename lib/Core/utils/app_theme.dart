import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
  );
}
