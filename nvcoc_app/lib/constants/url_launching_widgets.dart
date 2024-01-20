// URL Launching Widgets
import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';
import 'url_launch_function.dart';

class IconImageSearch extends StatelessWidget {
  final String url;
  final String image;

  const IconImageSearch({
    super.key,
    required this.url,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => canLaunchUrl(url),
      child: Image(
        image: AssetImage(
          'assets/$image',
        ),
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.05,
      ),
    );
  }
}

class CustomTextLaunchButton extends StatelessWidget {
  const CustomTextLaunchButton({
    super.key,
    required this.url,
    required this.title,
  });

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => canLaunchUrl(url),
      child: Text(
        title,
        style: montserrat.copyWith(fontWeight: FontWeight.bold, color: novaBlue),
      ),
    );
  }
}