import 'package:flutter/material.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/main.dart';
import 'package:shop_craft_app/widgets/custom_icon.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/shopping_body.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  static String id = "ShoppingScreen";

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: isEnglish
                ? EdgeInsets.only(right: 20)
                : EdgeInsets.only(left: 20),
            child: CustomIcon(
              opacity: 0,
              icon: Icons.language_rounded,
              onTap: () => ShopCraft.of(context)!.changeLan(),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        flexibleSpace: const GradientBackGround(),
        title: CustomText(
          text: loc.ourProducts,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
        centerTitle: true,
      ),
      body: ShoppingScreenBody(loc: loc),
    );
  }
}
