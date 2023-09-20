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
        pic: 'novalogo.png', pagename: 'Who We Are', pagenav: '/who_we_are'),
    NovaScreen(
        pic: 'novalogo.png',
        pagename: 'What We Believe',
        pagenav: '/belief'),
    NovaScreen(pic: 'novalogo.png', pagename: 'Leadership', pagenav: '/give'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NovaAppBar(),
      body: Container(
        decoration: BoxDecoration(
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
