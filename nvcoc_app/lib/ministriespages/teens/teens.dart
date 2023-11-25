import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';

class TeensScreen extends StatefulWidget {
  const TeensScreen({super.key});

  @override
  State<TeensScreen> createState() => _TeensScreenState();
}

class _TeensScreenState extends State<TeensScreen> {
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
                          'YOUTH & FAMILY MINISTRY',
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
                            '''We believe in helping families grow spiritually, and having an awesome time doing it. We have events for Pre-Teens (5th grade-6th grade), Teens (7th-12th grade), and for parents looking for guidance to build a godly family.  Make sure you’re signed up for our Youth & Family Weekly Email to get all the details about what’s going on in the ministry each week. To get signed up, contact us through the form below.  
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
                onTap: () => context.push('/parents'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/parentresource.png'),
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
              GestureDetector(
                onTap: () => context.push('/teens2'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/teenresource.png'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      '',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => context.push('/learn'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/mentorresource.png'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 170, 8, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '(Coming Soon!)',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
