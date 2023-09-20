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
    NovaScreen(pic: 'churchpic.png', pagename: 'ABOUT US', pagenav: '/about'),
    NovaScreen(pic: 'novalogo.png', pagename: 'CONNECT', pagenav: '/about'),
    NovaScreen(
        pic: 'people.jpg', pagename: 'MINISTRIES', pagenav: '/ministries'),
        NovaScreen(pic: 'novalogo.png', pagename: 'LEARN', pagenav: '/about'),
    NovaScreen(pic: 'give.png', pagename: 'GIVE', pagenav: '/give'),
    NovaScreen(pic: 'calendar.png', pagename: 'CALENDAR', pagenav: '/calendar'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.chat_bubble,
            color: Color(0xFF04578f),
          )),
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
              children: screens
                  .map((screen) => NovaTemplate(screen: screen))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
