// Text Fields

import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/text_styles.dart';

import 'input_decorations.dart';

class CustomTextBox extends StatelessWidget {
  final EdgeInsets padding;
  final TextEditingController controller;
  final String hintText;
  final String subtitle;
  final int? minLines;

  const CustomTextBox({
    required this.padding,
    required this.controller,
    required this.hintText,
    required this.subtitle,
    this.minLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle, style: montserrat.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          TextFormField(
            controller: controller,
            minLines: minLines,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: textInputDecoration.copyWith(hintText: hintText),
          ),
        ],
      ),
    );
  }
}
