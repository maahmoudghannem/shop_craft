import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/intro_body.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  static String id = "IntroScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientBackGround(child: IntroBody()));
  }
}
