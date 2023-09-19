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
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...screens.map((screen) => NovaTemplate(screen: screen)),
          ],
        ),
      ),
    );
  }
}
