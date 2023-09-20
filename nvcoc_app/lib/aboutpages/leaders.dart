import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class LeadersScreen extends StatefulWidget {
  const LeadersScreen({super.key});

  @override
  State<LeadersScreen> createState() => _LeadersScreenState();
}

class _LeadersScreenState extends State<LeadersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 216, 216),
        appBar: const NovaAppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {
      },
      backgroundColor: Colors.white,
      child: Icon(Icons.chat_bubble, color: Color(0xFF04578f),)
      ),
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
                  Card(
                      elevation: 4.0,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Color(0x8fff5c937))),
                      margin: const EdgeInsets.all(20.0),
                      child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                              child: Text('LEADERSHIP TEAM',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 22.0,
                                      letterSpacing: 2.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F)))))),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Floyd and Tamara Grossett - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text:
                                      'Congregational Evangelist & Women’s Ministry Leader (South/East Region) ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/grossets.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Paolo and Cara Ugolini - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text:
                                      'Evangelist & Women’s Ministry Leader (West Region) ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/ugolini.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Jack and Cathy Rosenquist - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text: 'Elder and Elder\'s Wife ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/rosenquist.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Matt and Katy Fisk - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text:
                                      'Evangelist & Women’s Ministry Leader (Singles Ministry) ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/Fisk.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Angel and Kristyn Vasquez - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text: 'Youth and Family Leaders ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/vasquez.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Jackson and Ariana Geer - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text: 'Youth and Family Minister and Intern ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/geers.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFF5c937))),
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: 'Angelina Guerra - ' '\n\n',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                ),
                                TextSpan(
                                  text: 'Campus Ministry Intern ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF04578F),
                                      letterSpacing: 2.0),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/angelina.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
