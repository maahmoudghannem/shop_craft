import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    required this.containerColor,
    this.height,
    this.width,
    this.radius = 32,
    this.fontSize = 22,
    this.textColor = Colors.white,
  });

  final String text;
  final void Function()? onTap;
  final Color textColor, containerColor;
  final double? height, width, fontSize, radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 16),
          color: containerColor,
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                // fontFamily: "Suwannaphum",
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
