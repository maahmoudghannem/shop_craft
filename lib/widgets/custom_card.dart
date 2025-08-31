import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/functions/snack_bar.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

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
  double _scale = 1.0;
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return GestureDetector(
      onTapDown: (_) => setState(() => _scale = 1.1), // Zoom in on press
      onTapUp: (_) {
        setState(() => _scale = 1.0); // Back to normal
        // Call the button function
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 12,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.asset(
                      widget.image,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 10,
                  ),
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
                          const SizedBox(height: 0.1),
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
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          onPressed = !onPressed;
                          debugPrint("on pressed $onPressed");
                          setState(() {});
                          onPressed
                              ? showSnackBar(context, loc.itemAdded)
                              : showSnackBar(context, loc.itemRemoved);
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
        ),
      ),
    );
  }
}
