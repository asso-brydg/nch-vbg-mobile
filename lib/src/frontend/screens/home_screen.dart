import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 20,
                left: ProjectConstants.marge,
                right: ProjectConstants.marge,
                bottom: 30,
              ),
              decoration: const BoxDecoration(
                color: ProjectColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            "Luttons tous contre les VBG ",
                            style: TextStyle(
                              color: ProjectColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.menu,
                          color: ProjectColors.white,
                        ),
                      )
                    ],
                  ),
                  const Gap(30),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: ProjectColors.white,
                      filled: true,
                      prefixIcon: const Icon(Iconsax.search_normal_1),
                      hintText: "Que voulez vous savoir aujourd'hui ?",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ProjectConstants.marge,
              ),
              child: SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: ProjectColors.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Iconsax.chart,
                                color: ProjectColors.white,
                                size: 50,
                              ),
                              Gap(10),
                              Text(
                                "Besoin de parler à quelqu'un ?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const Gap(10),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: ProjectColors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 25,
                                      ),
                                      child: Text(
                                        'Contacts utiles',
                                        style: TextStyle(
                                          color: ProjectColors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Iconsax.arrow_right_3,
                                    color: ProjectColors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: ProjectColors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 25,
                                      ),
                                      child: Text(
                                        'Tous savoir sur les VBG',
                                        style: TextStyle(
                                          color: ProjectColors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Iconsax.arrow_right_3,
                                    color: ProjectColors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
