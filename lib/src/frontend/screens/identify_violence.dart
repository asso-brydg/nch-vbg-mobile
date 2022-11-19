import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/components/buttons/assistance_sos_floating_button.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

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
            const Expanded(
              child: ViolenceDetailTabBar(),
            ),
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
      ),
    );
  }
}

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

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }
}

class ProcedureEnumationItem extends StatelessWidget {
  const ProcedureEnumationItem({
    Key? key,
    required this.number,
  }) : super(key: key);
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: ProjectColors.inputBg,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque tortor non at urna iaculis.',
            ),
          )
        ],
      ),
    );
  }
}
