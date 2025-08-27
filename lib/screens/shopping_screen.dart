import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/widgets/custom_card.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: GradientBackGround(),
        title: CustomText(
          text: "Our Products",
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
        centerTitle: true,
      ),

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Center(
              child: CustomText(
                color: Colors.black,
                text: "Featured Products",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Card(
                // color: kPrimaryColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    kImage,
                    height: 320,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Center(
              child: CustomText(
                color: Colors.black,
                text: "Shop Our Collection",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ProductsGrid(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Center(
              child: CustomText(
                color: Colors.black,
                text: "Hot Offers",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          // SliverToBoxAdapter(child: SizedBox(height: 15)),
          OffersList(),
        ],
      ),
    );
  }
}
