import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'project_colors.dart';

class ProjectTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ProjectColors.white,
    textTheme: GoogleFonts.poppinsTextTheme(),
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
