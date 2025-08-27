import 'package:flutter/material.dart';
import 'package:shop_craft_app/screens/intro_screen.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/screens/sign_in_screen.dart';
import 'package:shop_craft_app/screens/sign_up_screen.dart';

void main() {
  runApp(ShopCraft());
}

class ShopCraft extends StatelessWidget {
  const ShopCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        ShoppingScreen.id: (context) => ShoppingScreen(),
      },
      initialRoute: IntroScreen.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Suwannaphum"),
    );
  }
}
