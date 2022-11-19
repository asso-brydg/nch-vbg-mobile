import 'package:flutter/material.dart';

import 'project_colors.dart';

class ProjectTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ProjectColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: ProjectColors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ProjectColors.black,
      ),
      titleTextStyle: TextStyle(
        color: ProjectColors.black,
      ),
    ),
  );
}
