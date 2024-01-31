// Connect With Us Widgets
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'colors.dart';
import 'spacing.dart';
import 'text_styles.dart';
import 'url_launch_function.dart';

class ConnectTile extends StatelessWidget {
  final String detail;
  final String leading;
  final String? url;

  const ConnectTile({
    super.key,
    required this.detail,
    required this.leading,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: url != null ? () => canLaunchUrl(url!) : null,
      child: ListTile(
        leading: Text(
          leading,
          style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold),
        ),
        title: Text(
          detail,
          style: montserrat.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}

class ConnectColumn extends StatelessWidget {
  final String detail;
  final String title;
  final EdgeInsets padding;

  const ConnectColumn({
    super.key,
    required this.detail,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: montserrat.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: novaBlue),
          ),
        ),
        seperation,
        Padding(
          padding: padding,
          child: Text(
            detail,
            style: montserrat,
          ),
        ),
      ],
    );
  }
}

class HomeNavCard extends StatelessWidget {
  final String image;
  final String route;

  const HomeNavCard({
    super.key,
    required this.image,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$image'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
