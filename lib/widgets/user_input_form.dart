import 'package:flutter/material.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

class UserInputForm extends StatefulWidget {
  const UserInputForm({
    super.key,
    required this.hintText,
    required this.text,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.controller,
    this.obscureText = false,
  });

  final String hintText, text;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  State<UserInputForm> createState() => _UserInputFormState();
}

class _UserInputFormState extends State<UserInputForm> {
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
                text: widget.text,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                // fontWeight: FontWeight.w200,
              ),
            ],
          ),
          SizedBox(height: 7),
          TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            validator: widget.validator,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              hintText: widget.hintText,
              border: OutlineInputBorder(
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
