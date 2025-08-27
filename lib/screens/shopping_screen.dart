import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/widgets/custom_button.dart';
import 'package:shop_craft_app/widgets/custom_card.dart';
import 'package:shop_craft_app/widgets/custom_container.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';

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
          SliverToBoxAdapter(child: SizedBox(height: 20)),
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
          // SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverPadding(
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
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  CustomText(
                    text: "Hot Offers",
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                  SizedBox(height: 15),
                  CustomContainer(
                    color: kPrimaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "50% off\nElectronics",
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                              SizedBox(height: 10),
                              CustomText(
                                text: "Linted Time Offer\non all tech gadets",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          CustomButton(
                            text: " 50% Off ",
                            textColor: Colors.black,
                            fontSize: 20,
                            containerColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
