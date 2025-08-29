import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/functions.dart';
import 'package:shop_craft_app/widgets/user_input_form.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

final GlobalKey<FormState> formKey = GlobalKey();

final passwordController = TextEditingController();

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
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
              UserInputForm(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requierd";
                  }
                  String firstChar = value.trim()[0];
                  if (firstChar != firstChar.toUpperCase()) {
                    return "First letter must be uppercase";
                  }
                },
                text: "Full Name",
                hintText: "Enter Your Full Name",
              ),
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
                controller: passwordController,

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
              UserInputForm(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requierd";
                  }
                  if (value != passwordController.text) {
                    return "Passwords do not match";
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
                text: "Confirm Password",
                hintText: "Confirm Your Password",
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
                text: "Create Account",
                textColor: Colors.white,
                containerColor: kPrimaryColor,
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
