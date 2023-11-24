
import 'package:flutter/material.dart';
import 'package:rekod/core/app_colors.dart';

class AfroReadsBackButton extends StatelessWidget {
  const AfroReadsBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: RekodColors.darkBackground,
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              Icons.arrow_back_ios,
              color: RekodColors.background,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
