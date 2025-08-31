import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.onTap,
    this.opacity = 0.2,
  });

  final IconData icon;
  final void Function() onTap;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42,
        width: 28,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(opacity),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Icon(icon, size: 22)),
      ),
    );
  }
}
