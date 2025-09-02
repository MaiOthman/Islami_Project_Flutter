import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_colors.dart';

class AppTheme{
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: bottomNBTheme
  );
  static final bottomNBTheme =
  BottomNavigationBarThemeData(unselectedItemColor: AppColors.blackColor
  , showSelectedLabels: true,
    selectedItemColor: AppColors.whiteColor,
    backgroundColor: AppColors.primaryColor,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed

  );
}