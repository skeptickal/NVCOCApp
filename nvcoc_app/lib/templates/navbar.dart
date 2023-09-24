import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../templates/novapages.dart';
import '../templates/novacard.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final List<NovaScreen> screens = [
    NovaScreen(pic: 'churchpic.png', pagename: 'ABOUT US', pagenav: '/about'),
    NovaScreen(pic: 'connect.png', pagename: 'CONNECT', pagenav: '/connect'),
    NovaScreen(pic: 'people.jpg', pagename: 'MINISTRIES', pagenav: '/ministries'),
    NovaScreen(pic: 'learn.png', pagename: 'LEARN', pagenav: '/learn'),
    NovaScreen(pic: 'give.png', pagename: 'GIVE', pagenav: '/give'),
    NovaScreen(pic: 'calendar.png', pagename: 'CALENDAR', pagenav: '/calendar'),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: Center(
                child: GestureDetector(
                  child: Text('NVCOC.CHURCH',
                      style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
                      onTap: () {},
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/novaimage.jpg'), fit: BoxFit.cover),
              )),
          ...screens.map((screen) => NovaTemplate(screen: screen))
        ],
      ),
    );
  }
}
