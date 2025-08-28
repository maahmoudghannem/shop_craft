import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/arrow_methods.dart';
import 'package:shop_craft_app/widgets/custom_icon.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';

class CardStack extends StatefulWidget {
  const CardStack({super.key});

  @override
  State<CardStack> createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: images.length,
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image.asset(
                  images[index]["image"]!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 15,
                  left: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        images[index]["title"]!,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(color: Colors.black54, blurRadius: 6),
                          ],
                        ),
                      ),
                      Text(
                        images[index]["subtitle"]!,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(color: Colors.black54, blurRadius: 6),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        Positioned(
          top: 145,
          left: 12,
          child: CustomIcon(
            icon: Icons.arrow_back_ios_new_rounded,
            onTap: () {
              previousPage();
            },
          ),
        ),
        Positioned(
          top: 145,
          right: 12,
          child: CustomIcon(
            icon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              nextPage();
            },
          ),
        ),
      ],
    );
  }
}
