import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nchvbg/src/frontend/screens/ask_advise_screen.dart';
import 'package:nchvbg/src/frontend/screens/assistance_screen.dart';

import '../../themes/project_colors.dart';

class AssistanceSosFloatingButton extends StatelessWidget {
  const AssistanceSosFloatingButton({
    Key? key,
    this.isAdvise = true,
  }) : super(key: key);
  final bool isAdvise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              if (isAdvise) {
                Get.to(() => const AskAdviseScreen());
              } else {
                Get.to(() => const AssistanceScreen());
              }
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: ProjectColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 15,
              ),
            ),
            child: Text(
              isAdvise ? "Demander Conseils" : 'ASSISTANCE',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: ProjectColors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            child: const Text(
              'SOS',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AssistanceFloatingButton extends StatelessWidget {
  const AssistanceFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Get.to(() => const AskAdviseScreen());
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: ProjectColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
          child: const Text(
            'Demander Conseils',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
