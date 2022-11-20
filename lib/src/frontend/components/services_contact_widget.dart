import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../themes/project_colors.dart';

class ServicesContactWidget extends StatelessWidget {
  const ServicesContactWidget({
    Key? key,
    required this.name,
    required this.adresse,
  }) : super(key: key);
  final String name;
  final String adresse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ProjectColors.inputBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Gap(10),
                    Text(
                      adresse,
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: ProjectColors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Icon(Iconsax.location),
                    ),
                  ),
                  const Gap(5),
                  const Text('0,75km')
                ],
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: ProjectColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Icon(Iconsax.call),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: ProjectColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Icon(Icons.whatsapp),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: ProjectColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Icon(Iconsax.message),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
