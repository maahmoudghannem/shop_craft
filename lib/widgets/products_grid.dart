import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_card.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomCard(
            image: collection[index]["image"]!,
            title: collection[index]["title"]!,
            price: collection[index]["price"]!,
          );
        },
      ),
    );
  }
}
