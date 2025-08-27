import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
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
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(image: kImage),
              SizedBox(width: 25),
              CustomImage(image: kImage),
            ],
          ),
          SizedBox(height: 50),
          CustomButton(
            height: 50,
            width: 170,
            text: "Sign Up",
            containerColor: Colors.white,
            textColor: kPrimaryColor,
            onTap: () {
              Navigator.pushNamed(context, SignUpScreen.id);
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
              Navigator.pushNamed(context, SignInScreen.id);
            },
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}
