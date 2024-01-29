// Input Decoration
import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/text_styles.dart';

import 'colors.dart';

final textInputDecoration = InputDecoration(
  fillColor: white,
  filled: true,
  hintStyle: montserrat.copyWith(fontSize: 14),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: novaBlue, width: 2.0),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: novaYellow, width: 2.0),
  ),
);
