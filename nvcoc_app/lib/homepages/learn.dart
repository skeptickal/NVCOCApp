import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../templates/novapages.dart';
import '../templates/novacard.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  final Uri _url =
      Uri.parse('https://www.youtube.com/@NorthernVirginiaChurchofChrist');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could Not Launch $_url');
    }
  }

  List<NovaScreen> screens = [
    NovaScreen(
        pic: 'resource.png', pagename: 'RESOURCES', pagenav: '/resource'),
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
                const SizedBox(height: 20.0),
                IconButton(
                  onPressed: _launchUrl,
                  icon: Image.asset(
                    'assets/yt.png',
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                Center(
                  //todo - make look prettier
                  child: Text(
                    'Watch us LIVE every Sunday @10AM!',
                    style: GoogleFonts.montserrat(
                        letterSpacing: 2.0,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
