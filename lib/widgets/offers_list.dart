import 'package:flutter/material.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';
import 'package:shop_craft_app/widgets/offer_item.dart';

class OffersList extends StatelessWidget {
  const OffersList({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    final offers = getLocalizedOffers(loc);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return OfferItem(
            image: offers[index]["image"]!,
            title: offers[index]["title"]!,
            description: offers[index]["description"]!,
          );
        },
      ),
    );
  }
}
