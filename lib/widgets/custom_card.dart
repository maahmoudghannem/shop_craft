import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/functions.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 12,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  widget.image,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.title,
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(height: 0.1),
                      CustomText(
                        text:
                            r"$"
                            "${widget.price}",
                        fontSize: 14,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      onPressed = !onPressed;
                      debugPrint("on pressed $onPressed");

                      setState(() {});
                      onPressed
                          ? showSnackBar(context, "Item Added to Cart")
                          : showSnackBar(context, "Item Removed From Cart");
                    },

                    icon: Icon(
                      onPressed
                          ? Icons.shopping_cart_rounded
                          : Icons.shopping_cart_outlined,

                      size: 23,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
