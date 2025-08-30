import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/functions/animated_navigation.dart';
import 'package:shop_craft_app/screens/sign_in_screen.dart';
import 'package:shop_craft_app/screens/sign_up_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_image.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          SizedBox(height: 100),
          CustomText(text: "ShopCraft", fontSize: 65),
          SizedBox(height: 6),
          CustomText(
            text: "Your Premium Shopping\n          Experience",
            fontSize: 19,
            color: Colors.white.withOpacity(0.7),
          ),
          SizedBox(height: 75),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(image: "assets/images/asset image.png"),
              SizedBox(width: 30),
              CustomImage(
                image: kNetworkImage,
                isNetwork: true,
                // fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: 70),
          CustomButton(
            height: 50,
            width: 170,
            text: "Sign Up",
            containerColor: Colors.white,
            textColor: kPrimaryColor,
            onTap: () {
              {
                animatedNavigation(context, screen: const SignUpScreen());
              }
            },
          ),
          SizedBox(height: 24),
          CustomButton(
            height: 50,
            width: 170,
            text: "Sign In",
            containerColor: Colors.white,
            textColor: kPrimaryColor,
            onTap: () {
              animatedNavigation(context, screen: const SignInScreen());
            },
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}
