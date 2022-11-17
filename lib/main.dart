import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/frontend/screens/onboarding/onboarding_screen.dart';
import 'src/frontend/themes/project_theme.dart';

void main() {
  runApp(const NchVbgApp());
}

class NchVbgApp extends StatelessWidget {
  const NchVbgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ProjectTheme.light,
      themeMode: ThemeMode.light,
      home: OnboardingScreen(),
    );
  }
}
