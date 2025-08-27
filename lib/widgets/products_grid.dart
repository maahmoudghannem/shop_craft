import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_card.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return CustomCard();
        }, childCount: 4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 16,
        ),
      ),
    );
  }
}
