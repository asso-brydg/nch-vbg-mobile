import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../themes/project_colors.dart';
import '../../utils/project_images.dart';

class CustomAuthWithGoogleButton extends StatelessWidget {
  const CustomAuthWithGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ProjectColors.primary,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ProjectImages.googleIcon),
          const Gap(30),
          const Text(
            "Continuer avec Google",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: ProjectColors.primary,
            ),
          )
        ],
      ),
    );
  }
}
