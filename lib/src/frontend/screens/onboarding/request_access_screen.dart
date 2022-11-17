import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nchvbg/src/frontend/screens/authentication/request_auth.dart';
import 'package:nchvbg/src/frontend/themes/project_colors.dart';
import 'package:nchvbg/src/frontend/utils/project_constants.dart';

class RequestAccessScreen extends StatelessWidget {
  const RequestAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: ProjectConstants.marge,
          right: ProjectConstants.marge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(100),
            const Text(
              "Autorisation",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            const Text(
              'Sed ut perspiciatis unde omnis iste natus error.',
              style: TextStyle(
                fontSize: 18,
                color: ProjectColors.textGrey,
              ),
            ),
            const Gap(30),
            const RequestAcessItemWidget(title: "Notifications"),
            const RequestAcessItemWidget(title: "Microphone"),
            const RequestAcessItemWidget(title: "Localisation"),
            const RequestAcessItemWidget(title: "Contacts"),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ProjectColors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const RequestAuth());
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Continuer',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RequestAcessItemWidget extends StatefulWidget {
  const RequestAcessItemWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<RequestAcessItemWidget> createState() => _RequestAcessItemWidgetState();
}

class _RequestAcessItemWidgetState extends State<RequestAcessItemWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Switch.adaptive(
                value: isActive,
                onChanged: (value) {
                  setState(() {
                    isActive = value;
                  });
                },
                activeColor: ProjectColors.primary,
              )
            ],
          ),
          const Gap(2),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero aliquet odio mattis.',
            style: TextStyle(
              color: ProjectColors.textGrey,
            ),
          )
        ],
      ),
    );
  }
}
