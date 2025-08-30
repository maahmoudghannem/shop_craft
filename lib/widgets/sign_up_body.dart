import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/functions/animated_navigation.dart';
import 'package:shop_craft_app/functions/dialoge.dart';
import 'package:shop_craft_app/functions/password_toggle.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/user_input_form.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

final GlobalKey<FormState> _formKey = GlobalKey();
final passwordController = TextEditingController();

// Free up memory when the widget is destroyed

void controllerDispose() {
  passwordController.dispose();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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

                  if (!RegExp(r"^[a-zA-Z ]+$").hasMatch(value)) {
                    return "Only letters and spaces are allowed";
                  }

                  String firstChar = value.trim()[0];
                  if (firstChar != firstChar.toUpperCase()) {
                    return "First letter must be uppercase";
                  }
                  return null;
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
                  return null;
                },

                text: "Email",
                hintText: "Enter Your Email",
              ),

              UserInputForm(
                obscureText: hiddenPassword,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requierd";
                  }
                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
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
                obscureText: hiddenPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requierd";
                  }
                  if (value != passwordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
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
                  if (_formKey.currentState!.validate()) {
                    dialoge(
                      context,
                      message: "Account Created successfully",
                      onPressed: () {
                        Navigator.pop(context);
                        animatedNavigation(
                          context,
                          screen: const ShoppingScreen(),
                        );
                      },
                    );
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
