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
    NovaScreen(pic: 'churchpic.jpg', pagename: 'About Us', pagenav: '/about'),
    NovaScreen(
        pic: 'ministries.jpeg', pagename: 'Ministries', pagenav: '/ministries'),
    NovaScreen(pic: 'give.png', pagename: 'Give', pagenav: '/give'),
    NovaScreen(pic: 'calendar.png', pagename: 'Calendar', pagenav: '/calendar'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NovaAppBar(),
      body: Container( decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF04578f), Colors.white]),
        ),
        child: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: screens
                .map((screen) => NovaTemplate(screen: screen))
                .toList(),
          ),]
        ),
      ),
    );
  }
}
