import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/functions.dart';
import 'package:shop_craft_app/widgets/sign_up_body.dart';
import 'package:shop_craft_app/widgets/user_input_form.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
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
          UserInputForm(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "This field is requierd";
              }
              if (!value.contains('@')) {
                return "Email must contain @";
              }
            },
            text: "Email",
            hintText: "Enter Your Email",
          ),
          UserInputForm(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "This field is requierd";
              }
              if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
            },
            suffixIcon: IconButton(
              onPressed: () {
                togglePassword();
                setState(() {});
              },
              icon: hiddenPassword
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
            ),
            text: "Password",
            hintText: "Enter Your Password",
          ),

          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                showSnackBar(context, "Account created successfully");
                Navigator.pushNamed(context, ShoppingScreen.id);
              }
            },

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
