import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/components/buttons/assistance_sos_floating_button.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

import '../components/custom_title_widget.dart';
import '../components/procedure_enumated_widget.dart';
import '../components/services_contact_widget.dart';
import '../components/urgency_call_widget.dart';

class IdentifyViolenceScreen extends StatelessWidget {
  const IdentifyViolenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identifier une violence'),
        centerTitle: false,
      ),
      floatingActionButton: const AssistanceSosFloatingButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ProjectConstants.marge,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: ProjectColors.lightPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          "Mon conjoint refuse de me laisser gérer mon argent / celui du foyer",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ProjectColors.white,
                        ),
                        child: const Center(
                          child: Icon(Iconsax.volume_high),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: ProjectColors.primary,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: ProjectColors.primary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(
                          Icons.share,
                        ),
                        label: const Text("Partager"),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(30),
            const Expanded(child: ViolenceDetailTabBar())
          ],
        ),
      ),
    );
  }
}

class ViolenceDetailTabBar extends StatefulWidget {
  const ViolenceDetailTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ViolenceDetailTabBar> createState() => _ViolenceDetailTabBarState();
}

class _ViolenceDetailTabBarState extends State<ViolenceDetailTabBar>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
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
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(20),
                      const Text(
                        'Violences Congugales',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Placerat pretium, porta tempor eros, mattis. Diam sed vestibulum purus in proin platea pharetra. Facilisis fringilla lectus risus est, scelerisque. Ac ut magna ornare scelerisque diam sit convallis libero iaculis. Justo, neque amet quam euismod. Accumsan enim consequat feugiat lacus, egestas lorem.",
                      ),
                      const Gap(10),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Placerat pretium, porta tempor eros, mattis. Diam sed vestibulum purus in proin platea pharetra. Facilisis fringilla lectus risus est, scelerisque. Ac ut magna ornare scelerisque diam sit convallis libero iaculis. Justo, neque amet quam euismod. Accumsan enim consequat feugiat lacus, egestas lorem.",
                      ),
                      const Gap(20),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(ProjectImages.violences),
                              fit: BoxFit.cover,
                            )),
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
                      const ServicesContactWidget(
                        name: "CMS Tokoin Hôpital",
                        adresse:
                            "Adresse : Novissi dans le quartier de tokoin wiiti",
                      ),
                      const Gap(30),
                      const CustomTitleWidget(title: "La justice"),
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
      ),
    );
  }
}
