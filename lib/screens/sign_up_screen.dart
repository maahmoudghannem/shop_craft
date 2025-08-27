import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_container.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String id = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGround(
        child: CustomContainer(
          width: MediaQuery.of(context).size.width * 0.9,
          child: SignUpBody(),
        ),
      ),
    );
  }
}
