import 'package:flutter/material.dart';

import '../../themes/project_colors.dart';

class CustomLargeButtonWidget extends StatelessWidget {
  const CustomLargeButtonWidget({
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: ProjectColors.primary,
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
