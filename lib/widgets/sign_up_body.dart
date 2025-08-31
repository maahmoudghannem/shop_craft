import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/functions/animated_navigation.dart';
import 'package:shop_craft_app/functions/dialoge.dart';
import 'package:shop_craft_app/functions/password_toggle.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/main.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_icon.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/icon_text_direction.dart';
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
    final loc = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  CustomIcon(
                    icon: Icons.arrow_back_rounded,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 250),
                  isEnglish ? EngIcon(loc: loc) : ArIcon(loc: loc),
                ],
              ),
              const SizedBox(height: 15),
              CustomText(
                text: loc.createAccount,
                color: kPrimaryColor,
                fontSize: 32,
              ),
              const SizedBox(height: 4),
              CustomText(
                text: loc.join,
                color: Colors.black.withOpacity(0.6),
                fontSize: 18,
                // fontWeight: FontWeight.w200,
              ),
              const SizedBox(height: 20),
              UserInputForm(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return loc.fieldRequired;
                  }

                  if (!RegExp(r"^[a-zA-Z ]+$").hasMatch(value)) {
                    return loc.onlyLettersAndSpaces;
                  }

                  String firstChar = value.trim()[0];
                  if (firstChar != firstChar.toUpperCase()) {
                    return loc.firstLetterUppercase;
                  }
                  return null;
                },
                text: loc.fullName,
                hintText: loc.enterFullName,
              ),
              UserInputForm(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return loc.fieldRequired;
                  }
                  if (!value.contains('@')) {
                    return loc.emailMustContainAt;
                  }
                  return null;
                },

                text: loc.emailAddress,
                hintText: loc.enterEmailAddress,
              ),

              UserInputForm(
                obscureText: hiddenPassword,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return loc.fieldRequired;
                  }
                  if (value.length < 6) {
                    return loc.passwordMinLength;
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
                text: loc.password,
                hintText: loc.enterPassword,
              ),
              UserInputForm(
                obscureText: hiddenPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return loc.fieldRequired;
                  }
                  if (value != passwordController.text) {
                    return loc.passwordsDoNotMatch;
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
                text: loc.confirmPassword,
                hintText: loc.enterConfirmPassword,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    dialoge(
                      context,
                      message: loc.accountCreated,
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
                text: loc.createAccount,
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
