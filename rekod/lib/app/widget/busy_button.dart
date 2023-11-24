import 'package:flutter/material.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/core/app_colors.dart';

class BusyButton extends StatefulWidget {
  const BusyButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.active = true,
    this.titleColor = RekodColors.white,
    this.buttonColor = RekodColors.primaryColor,
    this.borderColor = RekodColors.primaryColor,
    this.fontsize = 16,
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;
  final bool active;
  final Color buttonColor;
  final Color titleColor;
  final Color borderColor;
  final double fontsize;
  @override
  State<BusyButton> createState() => _BusyButtonState();
}

class _BusyButtonState extends State<BusyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.active ? widget.onTap : null,
      child: Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: widget.active ? Border.all(color: widget.borderColor) : null,
          color: widget.active
              ? widget.buttonColor
              : Color.fromARGB(255, 146, 154, 164).withOpacity(0.4),
        ),
        child: Center(
          child: TextBold(
            widget.title,
            color: widget.active
                ? widget.titleColor
                : Colors.black.withOpacity(.7),
            fontSize: widget.fontsize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
