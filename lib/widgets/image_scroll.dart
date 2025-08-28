import 'package:flutter/material.dart';

class ImageScroll extends StatelessWidget {
  const ImageScroll({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          width: 370,
          height: 310,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: child,
          ),
        ),
      ),
    );
  }
}
