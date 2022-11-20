import 'package:flutter/material.dart';

import '../themes/project_colors.dart';

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
