import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../backend/controllers/onboarding_controller.dart';
import '../../themes/project_colors.dart';
import '../../utils/project_constants.dart';
import '../../utils/project_images.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController onboardingController =
      Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: ProjectConstants.marge,
          right: ProjectConstants.marge,
          bottom: ProjectConstants.marge * 2.5,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: ProjectColors.red,
                  ),
                  onPressed: () {},
                  child: const Text('Passer'),
                )
              ],
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  onboardingController.currentPage.value = value;
                },
                children: const [
                  CustomOnboardingPartial(
                    illustration: ProjectImages.onboarding1,
                    title: "Sécurité & Confidentialité",
                  ),
                  CustomOnboardingPartial(
                    illustration: ProjectImages.onboarding2,
                    title: "Informations & Assistance",
                  ),
                  CustomOnboardingPartial(
                    illustration: ProjectImages.onboarding3,
                    title: "Alerter & Secourir",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(() => OnboardingSlideButtonWidget(
                          isAstive: onboardingController.currentPage.value == 0,
                        )),
                    Obx(() => OnboardingSlideButtonWidget(
                          isAstive: onboardingController.currentPage.value == 1,
                        )),
                    Obx(
                      () => OnboardingSlideButtonWidget(
                        isAstive: onboardingController.currentPage.value == 2,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: ProjectColors.blue,
                  ),
                  child: const Text(
                    'Suivant',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomOnboardingPartial extends StatelessWidget {
  const CustomOnboardingPartial({
    Key? key,
    required this.illustration,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final String illustration;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(30),
        Image.asset(illustration),
        const Gap(30),
        Text(
          title,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        const Text(
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: ProjectColors.textGrey,
          ),
        ),
      ],
    );
  }
}

class OnboardingSlideButtonWidget extends StatelessWidget {
  const OnboardingSlideButtonWidget({
    Key? key,
    this.isAstive = false,
  }) : super(key: key);
  final bool isAstive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: isAstive ? 40 : 10,
        decoration: BoxDecoration(
          color: isAstive ? ProjectColors.red : ProjectColors.softGrey,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
