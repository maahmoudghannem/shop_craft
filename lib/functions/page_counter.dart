// page counter
import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/data_lists.dart';

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
