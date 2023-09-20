import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import '../templates/novapages.dart';
import '../templates/novacard.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  List<NovaScreen> screens = [
    NovaScreen(
        pic: 'people.jpg', pagename: 'SMALL GROUPS', pagenav: '/smallgroups'),
    NovaScreen(
        pic: 'cross.png', pagename: 'WORSHIP WITH US', pagenav: '/belief'),
    NovaScreen(pic: 'comment.png', pagename: 'COMMENT CARDS', pagenav: '/leaders'),
    NovaScreen(pic: 'team.png', pagename: 'SERVICE TEAM SIGN UP', pagenav: '/leaders'),
    NovaScreen(pic: 'volunteer.png', pagename: 'VOLUNTEER', pagenav: '/leaders'),
    NovaScreen(pic: 'missions.png', pagename: 'MISSIONS', pagenav: '/leaders'),
    NovaScreen(pic: 'evite.png', pagename: 'E-INVITES', pagenav: '/leaders'),
    NovaScreen(pic: 'bulletin.png', pagename: 'E-BULLETIN', pagenav: '/leaders'),
    NovaScreen(pic: 'contact.png', pagename: 'CONTACT US', pagenav: '/leaders'),
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
