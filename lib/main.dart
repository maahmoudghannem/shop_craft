import 'package:flutter/material.dart';
import 'package:shop_craft_app/functions/change_language.dart';
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
      supportedLocales: L10n.all,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,

      locale: appLan,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Suwannaphum"),
    );
  }
}
