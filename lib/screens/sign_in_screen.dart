import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_container.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String id = "SignInScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGround(
        child: CustomContainer(
          width: MediaQuery.of(context).size.width * 0.9,
          child: SignInBody(),
        ),
      ),
    );
  }
}
