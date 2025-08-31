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

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

final GlobalKey<FormState> _formKey = GlobalKey();

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
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
              text: loc.welcomeBack,
              color: kPrimaryColor,
              fontSize: 32,
            ),
            const SizedBox(height: 4),
            CustomText(
              text: loc.signInToShopCraft,
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
                if (!value.contains('@')) {
                  return loc.emailMustContainAt;
                }
                return null;
              },
              text: loc.emailAddress,
              hintText: loc.emailAddress,
            ),
            UserInputForm(
              obscureText: hiddenPassword,
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

            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  dialoge(
                    context,
                    message: loc.accountSignedIn,
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
              text: loc.signIn,
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
