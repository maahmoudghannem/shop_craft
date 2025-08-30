//dialoge
import 'package:flutter/material.dart';
import 'package:shop_craft_app/constants.dart';

void dialoge(
  BuildContext context, {
  required String message,
  required VoidCallback onPressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          width: 300,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  message,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(
                    "Close",
                    style: TextStyle(color: kPrimaryColor, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
