import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_images.dart';

class AskAdviseScreen extends StatelessWidget {
  const AskAdviseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                  image: AssetImage(
                    ProjectImages.profil,
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Afiwa Noussianougnon',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(5),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ProjectColors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Gap(5),
                    const Text(
                      'En ligne',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 30,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(30),
                    const CustomChatBubble(
                      text:
                          "Mon conjoint refuse de me laisser gérer mon  argent / celui du foyer. Comment gérer la situation ?",
                    ),
                    const CustomChatBubble(
                      isReceived: true,
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipisciLorem ipsum dolor sit amet, consectetur adipiscing elitng elit",
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: ProjectColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: ProjectColors.blue,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            onPressed: () {},
                            child: const Text('OUI'),
                          ),
                        ),
                        const Gap(40),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: ProjectColors.blue,
                              side: const BorderSide(
                                color: ProjectColors.blue,
                                width: 4,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            onPressed: () {},
                            child: const Text('NON'),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: ProjectColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: ProjectColors.red,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            onPressed: () {},
                            child: const Text('Je suis témoin'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0XFFF1F1F1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Gap(5),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_upload_outlined,
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Entrez votre message",
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 0,
                    constraints: const BoxConstraints(minWidth: 60),
                    fillColor: ProjectColors.blue,
                    padding: const EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.send,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble({
    Key? key,
    this.isReceived = false,
    required this.text,
  }) : super(key: key);
  final bool isReceived;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Bubble(
        elevation: 0,
        padding: const BubbleEdges.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        color: isReceived ? const Color(0XFFF1F1F1) : ProjectColors.blue,
        nip: isReceived ? BubbleNip.leftTop : BubbleNip.rightBottom,
        child: Text(
          text,
          style: TextStyle(
            color: isReceived ? Colors.black : Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
