import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.color = Colors.white,
    this.width,
    this.height,
    this.gradient,
  });

  final Widget child;
  final Color color;
  final double? width, height;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
