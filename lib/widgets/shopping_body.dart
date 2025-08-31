import 'package:flutter/material.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/image_card.dart';
import 'package:shop_craft_app/widgets/offers_list.dart';
import 'package:shop_craft_app/widgets/products_grid.dart';

class ShoppingScreenBody extends StatelessWidget {
  const ShoppingScreenBody({super.key, required this.loc});

  final AppLocalizations loc;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 15),
            CustomText(
              color: Colors.black,
              text: loc.featuredProducts,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(height: 10),
            CardStack(),
            SizedBox(height: 16),
            CustomText(
              color: Colors.black,
              text: loc.shopCollection,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            ProductsGrid(),
            SizedBox(height: 8),
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
    );
  }
}
