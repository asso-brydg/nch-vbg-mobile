import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nchvbg/src/frontend/components/fields/search_field_widget.dart';
import 'package:nchvbg/src/frontend/screens/detail_vbg_screen.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

import '../components/buttons/assistance_sos_floating_button.dart';

class AllAboutVBGScreen extends StatelessWidget {
  const AllAboutVBGScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Les Violences Basées sur le Genre"),
        centerTitle: false,
      ),
      floatingActionButton: const AssistanceSosFloatingButton(
        isAdvise: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: ProjectConstants.marge,
          right: ProjectConstants.marge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchInputFieldWidget(),
            const Gap(30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ViolencesWithCaseWidget(
                      title: "Violences Physiques",
                      subtitle: "La victime subit des coups & blessures",
                    ),
                    ViolencesWithCaseWidget(
                      title: "Violences Sexuelles",
                      subtitle: "La victimes a subit des atouchements etc.",
                    ),
                    ViolencesWithCaseWidget(
                      title: "Violences Financières",
                      subtitle: "La victime n'est pas gardienne de son argent",
                    ),
                    Gap(100)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ViolencesWithCaseWidget extends StatelessWidget {
  const ViolencesWithCaseWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleWithSubtitleWidget(
          title: title,
          subtitle: subtitle,
        ),
        const Gap(20),
        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const DetailVBGScreen());
                  },
                  child: Container(
                    height: 140,
                    width: 170,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: const AssetImage(
                          ProjectImages.violences,
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.5),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Coups & Blessures",
                        style: TextStyle(
                          color: ProjectColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Gap(40),
      ],
    );
  }
}

class CustomTitleWithSubtitleWidget extends StatelessWidget {
  const CustomTitleWithSubtitleWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(10),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
