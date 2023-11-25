import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/novacard.dart';
import 'package:nvcoc_app/templates/novapages.dart';

class MinistriesScreen extends StatefulWidget {
  const MinistriesScreen({super.key});

  @override
  State<MinistriesScreen> createState() => _MinistriesScreenState();
}

class _MinistriesScreenState extends State<MinistriesScreen> {
  List<NovaScreen> screens = [
    NovaScreen(
        pic: 'family.png', pagename: 'YOUTH AND FAMILY', pagenav: '/teens'),
    NovaScreen(pic: 'singles.png', pagename: 'SINGLES', pagenav: '/singles'),
    NovaScreen(pic: 'college.png', pagename: 'CAMPUS', pagenav: '/campus'),
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
              colors: [Color(0xFF04578f), Colors.white]),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...screens.map((screen) => NovaTemplate(screen: screen)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
