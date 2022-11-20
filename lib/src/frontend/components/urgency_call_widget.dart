import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../themes/project_colors.dart';

class UrgencyCallWidget extends StatelessWidget {
  const UrgencyCallWidget({
    Key? key,
    this.color = ProjectColors.green,
    this.icon = Iconsax.call,
    required this.phoneNumber,
    required this.label,
  }) : super(key: key);
  final String phoneNumber;
  final Color color;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phoneNumber,
                  style: const TextStyle(
                    color: ProjectColors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(5),
                Text(
                  label,
                  style: const TextStyle(
                    color: ProjectColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ProjectColors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Icon(icon),
            ),
          ),
        ],
      ),
    );
  }
}
