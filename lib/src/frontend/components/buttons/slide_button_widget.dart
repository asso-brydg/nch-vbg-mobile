import 'package:flutter/material.dart';

import '../../themes/project_colors.dart';

class SlideButtonWidget extends StatelessWidget {
  const SlideButtonWidget({
    Key? key,
    this.isAstive = false,
    this.activeColor = ProjectColors.primary,
    this.inactiveColor = ProjectColors.softGrey,
  }) : super(key: key);
  final bool isAstive;
  final Color activeColor;
  final Color inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: isAstive ? 50 : 10,
        decoration: BoxDecoration(
          color: isAstive ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
