import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/navbar.dart';
import '../templates/nova_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: const NovaButton(),
      drawer: NavBar(),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF04578f), Colors.white]),
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap:() => context.push('/connect'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/churchmeeting.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'CONNECT WITH US',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          'Sundays at Oakton High School or YouTube, 10:30AM',
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
                onTap:() => context.push('/calendar'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/calendar.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'CHECK\nOUT\nOUR\nEVENTS',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      ),
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap:() => context.push('/learn'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/bible.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(
                        'LEARN WITH US',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ), ]
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap:() => context.push('/belief'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/beliefs.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'OUR BELIEFS',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
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
