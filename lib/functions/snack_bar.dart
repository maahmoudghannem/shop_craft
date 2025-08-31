//snackbar
import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: CustomText(
        text: message,
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      showCloseIcon: true,
      backgroundColor: Colors.black,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}
