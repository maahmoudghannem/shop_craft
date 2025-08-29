import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';
import 'package:shop_craft_app/widgets/gradient_background.dart';

final PageController pageController = PageController();

int currentPage = 0;
void nextPage() {
  if (currentPage < images.length - 1) {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

void previousPage() {
  if (currentPage > 0) {
    currentPage--;
    pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black,

      showCloseIcon: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: CustomText(
        text: message,
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 4),
    ),
  );
}
