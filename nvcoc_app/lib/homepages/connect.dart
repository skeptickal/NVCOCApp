import 'package:flutter/material.dart';
import 'package:nvcoc_app/novabutton.dart';
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
    NovaScreen(
        pic: 'comment.png', pagename: 'COMMENT CARDS', pagenav: '/comment'),
    NovaScreen(pic: 'evite.png', pagename: 'E-INVITES', pagenav: '/leaders'),
    NovaScreen(
        pic: 'bulletin.png', pagename: 'E-BULLETIN', pagenav: '/leaders'),
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
