// Sub Titles
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final EdgeInsets padding;
  final TextStyle textStyle;
  final String subTitleText;

  const SubTitle({
    required this.padding,
    required this.textStyle,
    required this.subTitleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        subTitleText,
        style: textStyle,
      ),
    );
  }
}

class SpacedSubTitle extends StatelessWidget {
  final String subTitleText;
  final TextStyle textStyle;

  const SpacedSubTitle({
    required this.subTitleText,
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          subTitleText,
          style: textStyle,
        ),
      ),
    );
  }
}