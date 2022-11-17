import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../themes/project_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.hasBottomPadding = true,
  }) : super(key: key);

  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hasBottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: hasBottomPadding ? 25 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const Gap(10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              fillColor: ProjectColors.inputBg,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
