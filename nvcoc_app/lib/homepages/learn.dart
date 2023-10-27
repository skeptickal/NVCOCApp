import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import '../templates/novapages.dart';
import '../templates/novacard.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
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
      floatingActionButton: const NovaButton(),
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
