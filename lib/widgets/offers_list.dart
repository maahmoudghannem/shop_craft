import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/offer_item.dart';

class OffersList extends StatelessWidget {
  const OffersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return OfferItem();
        }, childCount: 2),
      ),
    );
  }
}
