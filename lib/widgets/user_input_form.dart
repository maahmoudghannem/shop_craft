import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

class UserInputForm extends StatelessWidget {
  const UserInputForm({super.key, required this.hintText, required this.text});

  final String hintText, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: text,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                // fontWeight: FontWeight.w200,
              ),
            ],
          ),
          SizedBox(height: 7),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
