import 'package:flutter/material.dart';

import 'app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) =>
      OutlineInputBorder(borderSide: BorderSide(width: 3, color: color));
  static final appDarkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(27),
        border: _border(Colors.transparent),
        enabledBorder: _border(Colors.transparent),
        focusedBorder: _border(Colors.transparent),
        errorBorder: _border(Colors.transparent),
      ),
      appBarTheme:
          const AppBarTheme(backgroundColor: AppPallete.backgroundColor));

  static final appNadaTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.secondaryColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(27),
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.primaryColor),
        errorBorder: _border(AppPallete.errorColor),
      ),
      appBarTheme:
          const AppBarTheme(backgroundColor: AppPallete.backgroundColor));
}
