import 'package:flutter/material.dart';
import '../shared/styles/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(secondary: AppColors.secondary),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
