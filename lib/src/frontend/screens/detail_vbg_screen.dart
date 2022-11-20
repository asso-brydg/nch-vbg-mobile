import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/screens/identify_violence.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

import '../components/buttons/slide_button_widget.dart';
import '../components/custom_title_widget.dart';
import '../components/procedure_enumated_widget.dart';
import '../components/services_contact_widget.dart';
import '../components/urgency_call_widget.dart';

class DetailVBGScreen extends StatelessWidget {
  const DetailVBGScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Les violences conjugales"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ProjectConstants.marge,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              ProjectImages.violences,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: (Get.width / 2) - 60,
                  child: Row(
                    children: const [
                      SlideButtonWidget(
                        isAstive: true,
                        activeColor: ProjectColors.white,
                      ),
                      SlideButtonWidget(),
                      SlideButtonWidget(),
                      SlideButtonWidget(),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: ProjectColors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Center(
                      child: Icon(
                        Iconsax.volume_high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            const Expanded(child: ViolenceCaseTabbarWidget()),
          ],
        ),
      ),
    );
  }
}

class ViolenceCaseTabbarWidget extends StatefulWidget {
  const ViolenceCaseTabbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ViolenceCaseTabbarWidget> createState() =>
      _ViolenceCaseTabbarWidgetState();
}

class _ViolenceCaseTabbarWidgetState extends State<ViolenceCaseTabbarWidget>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          isScrollable: false,
          unselectedLabelColor: ProjectColors.primary,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ProjectColors.primary,
          ),
          tabs: const [
            Tab(text: "Description"),
            Tab(text: "Les lois"),
            Tab(text: "Les spécialités"),
          ],
        ),
        const Gap(20),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: ProjectColors.blue.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.info),
                          Gap(10),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Points clés : ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                    ),
                    const Gap(10),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                    ),
                    const Gap(30),
                    const Text(
                      'Identifier une violence',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const IdentifyViolenceScreen());
                              },
                              child: Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      ProjectColors.black.withOpacity(0.5),
                                      BlendMode.darken,
                                    ),
                                    image: const AssetImage(
                                      ProjectImages.violences,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: ProjectColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Iconsax.maximize_44,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Utilisation de l\'argent ',
                                        style: TextStyle(
                                          color: ProjectColors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Gap(20),
                    CustomTitleWidget(title: "Les procédures"),
                    Gap(30),
                    ProcedureEnumationItem(number: 1),
                    ProcedureEnumationItem(number: 2),
                    ProcedureEnumationItem(number: 3),
                    ProcedureEnumationItem(number: 4),
                    Gap(20),
                    CustomTitleWidget(title: "Les textes de lois"),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(30),
                    const CustomTitleWidget(title: "Les numéros d'urgences"),
                    const Gap(20),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const UrgencyCallWidget(
                            phoneNumber: "111",
                            label: "Femmes solidaires",
                          );
                        },
                      ),
                    ),
                    const Gap(30),
                    const CustomTitleWidget(title: "La santé"),
                    const Gap(20),
                    const ServicesContactWidget(
                      name: "CMS Tokoin Hôpital",
                      adresse:
                          "Adresse : Novissi dans le quartier de tokoin wiiti",
                    ),
                    const Gap(30),
                    const CustomTitleWidget(title: "La justice"),
                    const Gap(20),
                    const ServicesContactWidget(
                      name: "Tribunal de Lomé",
                      adresse:
                          "Adresse : Novissi dans le quartier de tokoin wiiti",
                    ),
                    const Gap(120),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
