// Text Fields

import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/text_styles.dart';

import 'input_decorations.dart';

class CustomTextBox extends StatelessWidget {
  final EdgeInsets padding;
  final TextEditingController controller;
  final String hintText;
  final String subtitle;

  const CustomTextBox({
    required this.padding,
    required this.controller,
    required this.hintText,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(subtitle, style: montserrat),
          const SizedBox(height: 4),
          TextFormField(
            controller: controller,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: textInputDecoration.copyWith(hintText: hintText),
          ),
        ],
      ),
    );
  }
}
