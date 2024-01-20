//Other
import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';
import 'url_launch_function.dart';

class MinistriesBox extends StatelessWidget {
  const MinistriesBox({
    super.key,
    required this.url,
    required this.image,
    required this.title,
    required this.fontSize,
  });

  final String url;
  final String image;
  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => canLaunchUrl(url),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$image'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: montserrat.copyWith(fontSize: fontSize, fontWeight: FontWeight.bold, color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeadershipCard extends StatelessWidget {
  const LeadershipCard({
    super.key,
    required this.leaders,
    required this.role,
    required this.image,
  });

  final String leaders;
  final String role;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(side: BorderSide(color: novaBlue)),
      margin: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(children: <InlineSpan>[
                  TextSpan(
                    text: '$leaders - ' '\n\n',
                    style: montserrat.copyWith(fontWeight: FontWeight.bold, color: black),
                  ),
                  TextSpan(
                    text: role,
                    style: montserrat.copyWith(color: black, fontStyle: FontStyle.italic),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset('assets/$image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GiveBox extends StatelessWidget {
  const GiveBox({
    super.key,
    required this.image,
    required this.label,
    required this.subtext,
    this.url,
  });

  final String image;
  final String label;
  final String subtext;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: url != null ? () => canLaunchUrl(url!) : null,
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$image'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: montserrat.copyWith(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Text(
                subtext,
                style: montserrat.copyWith(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}