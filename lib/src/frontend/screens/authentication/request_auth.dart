import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nchvbg/src/frontend/screens/authentication/register_screen.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

import '../../components/buttons/custom_large_button_widget.dart';

class RequestAuth extends StatelessWidget {
  const RequestAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: ProjectConstants.marge,
          right: ProjectConstants.marge,
        ),
        child: Column(
          children: [
            const Gap(60),
            Image.asset(ProjectImages.authIllustration),
            const Gap(30),
            const Text(
              "Un compte, un dossier !",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const Gap(20),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "En continuant vous acceptez nos ",
                  ),
                  TextSpan(
                    text: "conditions d’utilisation ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.blue,
                    ),
                  ),
                  TextSpan(text: "et nos "),
                  TextSpan(
                    text: "politiques de confidentialité ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.blue,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomLargeButtonWidget(
                title: "Connexion / Inscription",
                onPressed: () {
                  Get.to(() => const RegisterScreen());
                },
              ),
            ),
            const Gap(10),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: ProjectColors.red,
              ),
              child: const Text(
                'Je veux etre anonyme',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
