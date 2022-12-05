import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/components/buttons/assistance_sos_floating_button.dart';

import '../components/custom_title_widget.dart';
import '../components/services_contact_widget.dart';
import '../components/urgency_call_widget.dart';

class UsefulContactsScreen extends StatelessWidget {
  const UsefulContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts utiles'),
        centerTitle: false,
      ),
      floatingActionButton: const AssistanceFloatingButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.search_normal_1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
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
              const Gap(10),
              const ServicesContactWidget(
                name: "CMS Tokoin Hôpital",
                adresse: "Adresse : Novissi dans le quartier de tokoin wiiti",
              ),
              const Gap(30),
              const CustomTitleWidget(title: "La justice"),
              const Gap(10),
              const ServicesContactWidget(
                name: "Tribunal de Lomé",
                adresse: "Adresse : Novissi dans le quartier de tokoin wiiti",
              ),
              const Gap(140),
            ],
          ),
        ),
      ),
    );
  }
}
