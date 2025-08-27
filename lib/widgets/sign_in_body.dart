import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/user_input_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        children: [
          const SizedBox(height: 15),
          const CustomText(
            text: "Welcome Back",
            color: kPrimaryColor,
            fontSize: 32,
          ),
          const SizedBox(height: 4),
          CustomText(
            text: "Sign in to ShopCraft",
            color: Colors.black.withOpacity(0.6),
            fontSize: 18,
            // fontWeight: FontWeight.w200,
          ),
          const SizedBox(height: 20),
          const UserInputForm(text: "Email", hintText: "Enter Your Email"),
          const UserInputForm(
            text: "Password",
            hintText: "Enter Your Password",
          ),
          const SizedBox(height: 20),
          CustomButton(
            height: 50,
            width: 310,
            radius: 10,
            text: "Sign In",
            textColor: Colors.white,
            containerColor: kPrimaryColor,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
