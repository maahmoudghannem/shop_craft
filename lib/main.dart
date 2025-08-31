import 'package:flutter/material.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/l10n/l10n.dart';
import 'package:shop_craft_app/screens/intro_screen.dart';
import 'package:shop_craft_app/screens/shopping_screen.dart';
import 'package:shop_craft_app/screens/sign_in_screen.dart';
import 'package:shop_craft_app/screens/sign_up_screen.dart';

// import 'package:flutter_gen/gen_l10n/app_localization.dart';
// import 'generated/l10n.dart';

void main() async {
  runApp(ShopCraft());
}

class ShopCraft extends StatefulWidget {
  const ShopCraft({super.key});

  static _ShopCraftState? of(BuildContext context) =>
      context.findAncestorStateOfType<_ShopCraftState>();

  @override
  State<ShopCraft> createState() => _ShopCraftState();
}

Locale appLan = const Locale("en");
bool isEnglish = true;

class _ShopCraftState extends State<ShopCraft> {
  void changeLan() {
    setState(() {
      if (appLan == Locale("en")) {
        appLan = Locale("ar");
        isEnglish = false;
      } else {
        appLan = Locale("en");
        isEnglish = true;
      }
    });
  }

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
      supportedLocales: L10n.all,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,

      locale: appLan,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Suwannaphum"),
    );
  }
}
