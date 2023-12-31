import 'package:flutter/material.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WhoWeAreScreen extends StatefulWidget {
  const WhoWeAreScreen({super.key});

  @override
  State<WhoWeAreScreen> createState() => _WhoWeAreScreenState();
}

class _WhoWeAreScreenState extends State<WhoWeAreScreen> {
  final Uri _url = Uri.parse('https://instagram.com/nova.churchofchrist/');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could Not Launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NovaAppBar(),
        floatingActionButton: const NovaButton(),
        //drawer: NavBar(),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF04578f), Colors.white]),
          ),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 4.0,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: novaYellow)),
                  margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'WHO WE ARE',
                            style: GoogleFonts.montserrat(
                              fontSize: 22.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF04578F),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Simply put, we are a group of people trying to live like Jesus.'
                              ' We’re broken, passionate, imperfect, and doing our best to love'
                              ' a world that needs it. We’re a big family whose doors are wide '
                              'open to anyone! Seriously though, the church is diverse and '
                              'international and you’ll meet people from just about every culture'
                              ' and spiritual background because we are all about going to the ends '
                              'of the world for Jesus. We have families, professionals, college students, '
                              'mature citizens, high school students just about every kind of person because '
                              'Jesus loves every kind of person. The NOVA Church of Christ has been around '
                              'for about 30 years, but we believe we have so much work to do to show our '
                              'area the love of Jesus through our community. Don’t take our word for it,'
                              ' check us out, and see if we’re the real deal!',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontStyle: FontStyle.italic,
                                color: novaBlue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.yellow)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: Text(
                                  'CHECK OUT OUR INSTAGRAM\n  (@NOVA.CHURCHOFCHRIST)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    color: const Color(0xFF04578F),
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchUrl,
                            child: Image.asset('assets/insta.png',
                                height: 40, width: 40),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
