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
        pic: 'people.jpg', pagename: 'WHO WE ARE', pagenav: '/who_we_are'),
    NovaScreen(
        pic: 'cross.png',
        pagename: 'WHAT WE BELIEVE',
        pagenav: '/belief'),
    NovaScreen(pic: 'compass.jpg', pagename: 'LEADERSHIP', pagenav: '/leaders'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
      backgroundColor: Colors.white,
      child: Icon(Icons.chat_bubble, color: Color(0xFF04578f),)
      ),
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
