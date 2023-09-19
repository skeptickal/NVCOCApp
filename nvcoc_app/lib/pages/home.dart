import 'package:flutter/material.dart';
import 'novapages.dart';
import 'novacard.dart';
import 'nova_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NovaScreen> screens = [
    NovaScreen(pic: 'novalogo.png', pagename: 'About Us', pagenav: '/about'),
    NovaScreen(
        pic: 'ministries.jpeg', pagename: 'Ministries', pagenav: '/ministries'),
    NovaScreen(pic: 'give.png', pagename: 'Give', pagenav: '/give'),
    NovaScreen(pic: 'calendar.png', pagename: 'Calendar', pagenav: '/calendar'),
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
