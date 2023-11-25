import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';

class SinglesScreen extends StatefulWidget {
  const SinglesScreen({super.key});

  @override
  State<SinglesScreen> createState() => _SinglesScreenState();
}

class _SinglesScreenState extends State<SinglesScreen> {
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
          child: ListView(
            children: [
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
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          'SINGLES & YOUNG PROFESSIONALS MINISTRY',
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
                            ''' The Single Professionals Ministry is a group of single adults focused on connecting our professional and spiritual worlds. We are a diverse group with the desire to excel professionally, grow spiritually, and serve the community; all while walking closely with our God. We host networking events with guest speakers, experts from various fields. We have monthly devotionals that apply biblical principles toward career growth, being righteous in the workplace, and everyday life. We build community and connection through small groups that focus on Bible study, prayer and having fun!
                            \nFor more information, reach out using our comment card system below, and write in the comment that you would like more info!''',
                            style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontStyle: FontStyle.italic,
                              color: const Color(0xFF04578F),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/singles1.png'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          '',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
