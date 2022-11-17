import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/screens/authentication/login_screen.dart';

import '../../components/buttons/custom_google_button.dart';
import '../../components/buttons/custom_large_button_widget.dart';
import '../../components/fields/custom_text_field_widget.dart';
import '../../themes/project_colors.dart';
import '../../utils/project_constants.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(40),
            const Text(
              "Récupération",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            const Text(
              "Sed ut perspiciatis unde omnis iste natus error.",
              style: TextStyle(
                fontSize: 16,
                color: ProjectColors.textGrey,
              ),
            ),
            const Gap(40),
            const CustomTextFieldWidget(
              label: "Email",
              prefixIcon: Icon(Iconsax.sms),
            ),
            CustomLargeButtonWidget(
              title: "Récupérer le mot de passe",
              onPressed: () {},
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: ProjectColors.blue,
                  ),
                  child: const Text(
                    "Me connecter !",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
