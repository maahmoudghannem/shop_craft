import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _scale = 1.1),
      onTapUp: (_) {
        setState(() => _scale = 1.0);
        widget.onTap!();
      },
      onTapCancel: () => setState(() => _scale = 1.0),

      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeInOut,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius ?? 16),
            color: widget.containerColor,
          ),
          height: widget.height,
          width: widget.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  // fontFamily: "Suwannaphum",
                  fontSize: widget.fontSize,
                  fontWeight: FontWeight.w600,
                  color: widget.textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
