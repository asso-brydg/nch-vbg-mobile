import 'package:flutter/material.dart';

import '../../themes/project_colors.dart';

class SlideButtonWidget extends StatelessWidget {
  const SlideButtonWidget({
    Key? key,
    this.isAstive = false,
  }) : super(key: key);
  final bool isAstive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: isAstive ? 50 : 10,
        decoration: BoxDecoration(
          color: isAstive ? ProjectColors.primary : ProjectColors.softGrey,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
