import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/screens/all_about_vbg_screen.dart';
import 'package:nchvbg/src/frontend/screens/useful_contacts_scree.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

import '../components/buttons/assistance_sos_floating_button.dart';
import '../components/buttons/slide_button_widget.dart';
import '../components/fields/search_field_widget.dart';
import 'identify_violence.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        floatingActionButton: const AssistanceSosFloatingButton(),
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
                  const SearchInputFieldWidget(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: ProjectConstants.marge,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(30),
                      SizedBox(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Iconsax.message_2,
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
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(
                                          () => const UsefulContactsScreen(),
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: ProjectColors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                  ),
                                  const Gap(10),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => const AllAboutVBGScreen());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: ProjectColors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(30),
                      Container(
                        decoration: BoxDecoration(
                          color: ProjectColors.lightPurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          SlideButtonWidget(
                                            isAstive: true,
                                          ),
                                          SlideButtonWidget(),
                                          SlideButtonWidget(),
                                          SlideButtonWidget(),
                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.share,
                                            color: ProjectColors.primary,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Mon conjoint refuse de me laisser gérer mon argent / celui du foyer',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      elevation: 0,
                                      backgroundColor: ProjectColors.darkYellow,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Prendre conseil',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      elevation: 0,
                                      backgroundColor: ProjectColors.primary,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                          () => const IdentifyViolenceScreen());
                                    },
                                    child: const Text(
                                      'En savoir plus',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Gap(30),
                      SizedBox(
                        height: 230,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  const SizedBox(
                                    height: 200,
                                    width: 300,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 180,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: ProjectColors.textGrey
                                                .withOpacity(0.4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 35,
                                          left: 16,
                                          right: 16,
                                        ),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis...",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            const Gap(10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextButton.icon(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Iconsax.arrow_right_1),
                                                  label: const Text(
                                                    'Lire la suite',
                                                  ),
                                                ),
                                                Image.asset(
                                                  ProjectImages.testimony,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 125,
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            ProjectImages.profil,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const Gap(150),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
