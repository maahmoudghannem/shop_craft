import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/main.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardStack extends StatefulWidget {
  const CardStack({super.key});

  @override
  State<CardStack> createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final images = getLocalizedImages(loc: loc);
    final PageController pageController = PageController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            width: 370,
            height: 310,
            child: PageView.builder(
              controller: pageController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        images[index]["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: isEnglish ? 12 : 0,
                      right: isEnglish ? 0 : 12,
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: images[index]["title"]!,
                                fontSize: 35,
                                fontWeight: FontWeight.w800,
                              ),
                              CustomText(
                                text: images[index]["subTitle"]!,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          SmoothPageIndicator(
            controller: pageController,
            count: images.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: kPrimaryColor,
              dotColor: Colors.grey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 6,
            ),
          ),
        ],
      ),
    );
  }
}
