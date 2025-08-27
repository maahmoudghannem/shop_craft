import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.child,
    this.color = Colors.white,
    this.width,
    this.height,
  });

  final Widget child;
  Color color;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
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
