// Input Decoration
import 'package:flutter/material.dart';

import 'colors.dart';

const textInputDecoration = InputDecoration(
  fillColor: white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: novaBlue, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: novaYellow, width: 2.0),
  ),
);
