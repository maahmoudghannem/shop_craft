import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/card_stack.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';
import 'package:shop_craft_app/widgets/image_scroll.dart';
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
        automaticallyImplyLeading: false,
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
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 15),
              CustomText(
                color: Colors.black,
                text: "Featured Products",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              const SizedBox(height: 10),
              ImageScroll(child: CardStack()),
              const SizedBox(height: 20),
              CustomText(
                color: Colors.black,
                text: "Shop Our Collection",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              ProductsGrid(),
              const SizedBox(height: 20),
              CustomText(
                color: Colors.black,
                text: "Hot Offers",
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
