import 'package:flutter/material.dart';
import 'package:shop_craft_app/functions/change_language.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/widgets/custom_icon.dart';
import 'package:shop_craft_app/widgets/image_card.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/offers_list.dart';
import 'package:shop_craft_app/widgets/products_grid.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: const GradientBackGround(),
        title: CustomText(
          text: loc.ourProducts,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              CustomIcon(icon: Icons.language_rounded, onTap: changeLan),
              SizedBox(height: 15),
              CustomText(
                color: Colors.black,
                text: loc.featuredProducts,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: 10),
              CardStack(),
              SizedBox(height: 20),
              CustomText(
                color: Colors.black,
                text: loc.shopCollection,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              ProductsGrid(),
              SizedBox(height: 20),
              CustomText(
                color: Colors.black,
                text: loc.hotOffers,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              OffersList(),
            ]),
          ),
        ],
      ),
    );
  }
}
