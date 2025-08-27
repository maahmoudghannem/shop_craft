import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/user_input_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const CustomText(
              text: "Create Account",
              color: kPrimaryColor,
              fontSize: 32,
            ),
            const SizedBox(height: 4),
            CustomText(
              text: "Join ShopCraft toady",
              color: Colors.black.withOpacity(0.6),
              fontSize: 18,
              // fontWeight: FontWeight.w200,
            ),
            const SizedBox(height: 20),

            const UserInputForm(
              text: "Full Name",
              hintText: "Enter Your Full Name",
            ),

            const UserInputForm(text: "Email", hintText: "Enter Your Email"),

            const UserInputForm(
              text: "Password",
              hintText: "Enter Your Password",
            ),

            const UserInputForm(
              text: "Confirm Password",
              hintText: "Confirm Your Password",
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, ShoppingScreen.id);
              },
              height: 50,
              width: 310,
              radius: 10,
              text: "Create Account",
              textColor: Colors.white,
              containerColor: kPrimaryColor,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
