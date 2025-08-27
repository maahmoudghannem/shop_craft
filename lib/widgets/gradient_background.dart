import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';

class GradientBackGround extends StatelessWidget {
  const GradientBackGround({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            Colors.purpleAccent,
            // Colors.deepPurpleAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
