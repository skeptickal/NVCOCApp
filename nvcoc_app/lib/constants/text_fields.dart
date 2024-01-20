// Text Fields
import 'package:flutter/material.dart';

import 'input_decorations.dart';

class CustomTextBox extends StatelessWidget {
  final EdgeInsets padding;
  final TextEditingController controller;
  final String hintText;

  const CustomTextBox({
    required this.padding,
    required this.controller,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: padding,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: textInputDecoration.copyWith(hintText: hintText),
        ),
      ),
    );
  }
}