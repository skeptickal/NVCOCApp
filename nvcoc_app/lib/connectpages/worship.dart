import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/worship_info.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class WorshipScreen extends StatelessWidget {
  WorshipScreen({super.key});
  final Uri _url =
      Uri.parse('https://www.youtube.com/@NorthernVirginiaChurchofChrist');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could Not Launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Worship> worshipInfo = Provider.of<List<Worship>>(context);
    return StreamProvider<List<Worship>>.value(
        value: DatabaseService().worshipInfo,
        catchError: (context, error) {
          // Handle the error here
          print("Error in stream: $error");
          return [];
        },
        initialData: const [],
        child: Scaffold(
          appBar: NovaAppBar(),
          floatingActionButton: NovaButton(),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [novaBlue, Colors.white]),
            ),
            child: ListView.builder(
              itemCount: worshipInfo.length,
              itemBuilder: (context, index) {
                Worship worship = worshipInfo[index];

                // Use the worship parameters as needed
                return Column(
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
                                'WHERE WE MEET',
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
                                  '${worship.meetingPlace}, ${worship.meetingTime}',
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
                                'LIVE STREAM',
                                style: GoogleFonts.montserrat(
                                  fontSize: 22.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF04578F),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: _launchUrl,
                              icon: Image.asset(
                                'assets/yt.png',
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'We also meet online at 10:30AM',
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
                                'WHAT TO EXPECT',
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
                                  worship.whatToExpect,
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
                                'WHAT ABOUT MY KIDS',
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
                                  worship.whatAboutKids,
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
                                'WHAT IF I AM NOT VERY CHURCHY OR RELIGIOUS?',
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
                                  worship.whatAboutMe,
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
                                'STILL FEELING UNSURE?',
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
                                  worship.unsure,
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
                    SizedBox(height: 40)
                  ],
                );
              },
            ),
          ),
        ));
  }
}
