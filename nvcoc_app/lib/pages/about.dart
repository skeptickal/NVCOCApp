import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';
import 'novapages.dart';
import 'novacard.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<NovaScreen> screens = [
    NovaScreen(
        pic: 'people.jpg', pagename: 'Who We Are', pagenav: '/who_we_are'),
    NovaScreen(
        pic: 'cross.png',
        pagename: 'What We Believe',
        pagenav: '/belief'),
    NovaScreen(pic: 'compass.jpg', pagename: 'Leadership', pagenav: '/leaders'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF04578f), Colors.white]),),
        child: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...screens.map((screen) => NovaTemplate(screen: screen)),
            ],
          ),],
        ),
      ),
    );
  }
}
