import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';

class ParentsScreen extends StatefulWidget {
  const ParentsScreen({super.key});

  @override
  State<ParentsScreen> createState() => _ParentsScreenState();
}

class _ParentsScreenState extends State<ParentsScreen> {
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
                        'RESOURCES FOR PARENTS',
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
                          'Check out some of the resources we have compiled for parents of teens!',
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
              onTap: () => context.push('/parents2'),
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/godlyfamily.png'),
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
                        'BUILDING GODLY FAMILIES',
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
                          'We all need support when we’re trying to build a godly family. Once a month, we have a devotional for the parents, teens, and pre-teens in our Youth & Family ministry. We call them PTPs. Here you’ll find videos, slides, handouts and more from our PTPs all geared toward helping you build your family in a godly way.',
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
              onTap: () => context.push('/parents3'),
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/conversation_starters.png'),
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
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'TABLETOP CONVERSATION STARTERS',
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
                          'If you want to have good conversations with your family but don’t know where to start, check out these tabletop cards that you can keep on your table, pull one out, and get a conversation going.',
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
          ],
        ),
      ),
    );
  }
}
